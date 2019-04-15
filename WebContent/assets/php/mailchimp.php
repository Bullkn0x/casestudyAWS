<?php
/**
 * MailChimp subscription handler.
 * @author Michael-James Parsons
 *
 * This file will guide you through the steps to integrate mailchimp subscription forms
 * into your website.
 *
 * NOTE:
 *
 * Throughout this file, you'll notice that the program regularly prints an array with two elements:
 *      "status" - (boolean) "True" means tells your ajax request that your request worked and the user's email
 *                           has been successfully added. "False" means that some sort of error occurred.
 *
 *      "response" - (String) Contains the success or error text related to the "status" (as seen above).
 *
 * This implementation expects a POST request (from ajax) that contains the following information:
 *      - action
 *      - email
 *      - _csrf
 */




/**
 * Return 400 (bad request) header if "action" or "_csrf" are not provided.
 *
 * A CSRF (cross site request forgery) token prevents other people from sending
 * their own ajax requests to this site from other websites. (It's a security thing).
 *
 * This will set the request status to 400 (Bad Request) you you don't provide a CSRF token.
 */
if(empty($_REQUEST) || empty($_REQUEST['action'])
    || empty($_REQUEST['_csrf'])
    || $_REQUEST['_csrf'] != $_SESSION['_csrf']) {
    header('HTTP/1.1 400 Bad Request', true, 400);

    //Throw "invalid CSRF token" error.
    print json_encode(array(
       "status" => false,
        "response" => "Invalid CSRF token"
    ));

    exit();
}


/**
 * Ensure that an email has been posted to this page.
 */
if(empty($_POST['email'])) {
    //Throw "invalid request" error if the email doesn't exist.
    print json_encode(array(
        'status'    => false,
        'response'  => "Invalid request. Please refresh and try again."
    ));
    exit();
}

// Store a copy of the email so you may manipulate the copy ($email) and
// still have access to the original ($_POST['email']).
$email = $_POST['email'];


/**
 * Validate the email.
 * (Make sure what the user entered is actually an email)
 */
if(filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
    //Throw "invalid email" if the user's email is invalid.
    print json_encode(array(
        'status'    => false,
        'response'  => "Invalid email."
    ));
    exit();
}


/**
 * Store the email address and the desired status of the email address.
 *
 * email_address - The email address.
 * status        - The state you would like the email to have once it's been added to your list.
 *                  (examples: "subscribed", "unsubscribed", "pending")
 */
$fields = array(
    'email_address' => $_POST['email'],
    "status" => "subscribed"
);


/**
 * JSON encode the fields so you can send them through the API.
 */
$fields = json_encode($fields);

/**
 * @var String $endpoint - The location to send your API request.
 *
 * Format:   {region key}.api.mailchimp.com/3.0/lists/{list ID}/members
 *
 * How to get the "region key":
 * The last few characters of your mailchimp API key will have something like "--us11".
 * Everything after the "--" needs to be placed at the beginning of your endpoint.
 *
 * My key was something like "xxxxxxxxxxxxxxxxxxxxx--us11", so the beginning of my endpoint
 * starts with "us11".
 *
 * How to get the "list ID":
 * In your mailchimp account, create a list. Once you have done so, access the list's settings.
 * There, you will find it's ID (located toward the bottom of the page).
 *
 * Your end result should look something like this:
 *      us11.api.mailchimp.com/3.0/lists/43f4b7850c/members
 */
$endpoint = "us19.api.mailchimp.com/3.0/lists/34cde5bdae/members";


/**
 * Headers are additional pieces of information that you provide with your HTTP request.
 * Mailchimp's api expects three extra "headers":
 *
 *      - "Authorization" (This defines your api key)
 *      - "Content-Type" (Tells Mailchimps server how we are sending our information. In this case, it's a JSON string).
 *      - "Content-Length" (HTTP requests expect you to provide the number of characters you are sending.
 *                          In this case, I'm sending the length of characters in my JSON string "$fields").
 */
$headers = array(
    "Authorization: apikey {77f6989ef08b7bbd622837862aed97e0-us19}",
    "Content-Type: application/json",
    "Content-Length: " . strlen($fields)
);


/**
 * cURL (pronounced "curl") is a built in PHP function that allows you to send HTTP requests to other servers.
 * This line creates a cURL request.
 */
$apiConnection = curl_init();

/**
 * Add the headers we defined above into the request.
 */
curl_setopt($apiConnection, CURLOPT_HTTPHEADER, $headers);
curl_setopt($apiConnection, CURLOPT_VERBOSE, 1);

/**
 * Tells the end server that we don't need to verify a SSL certificate.
 */
curl_setopt($apiConnection, CURLOPT_SSL_VERIFYPEER, FALSE);

/**
 * This tells cURL to stop if it hasn't received a response after 30 seconds.
 * (most requests only take 1 or 2)
 */
curl_setopt($apiConnection, CURLOPT_TIMEOUT, 30);

/**
 *  Tell the request where it's going (the "endpoint" aka URL)
 */
curl_setopt($apiConnection, CURLOPT_URL, $endpoint);

/**
 * Tell how many peices of post data we are sending with the request.
 */
curl_setopt($apiConnection, CURLOPT_POST, count($fields));

/**
 * Send the our $fields json string as post data.
 */
curl_setopt($apiConnection, CURLOPT_POSTFIELDS, $fields);

/**
 * If set to 1, this will tell Mailchimp's server that we expect to receive a response from them.
 */
curl_setopt($apiConnection, CURLOPT_RETURNTRANSFER, 1);

/**
 * curl_exec(...) tells the request to execute.
 *
 * json_decode(...) will decode the json returned from the API.
 */
$result = json_decode(curl_exec($apiConnection), true);

/**
 * Get the headers and status (200, 400, 404, etc) from the API's returned request.
 */
$info = curl_getinfo($apiConnection);

/**
 * Store the returned request's status.
 *
 * We want this status to be 200.
 *
 * If it is 400 (Bad Request), 404 (Page not found), or 502 (Internal Server Error), then we'll know
 * that something went wrong.
 */
$http_code = $info['http_code'];

/**
 * Close the connection.
 */
curl_close($apiConnection);

/**
 * Make sure we got a 200 status from the API (remember 200 means "All Good").
 *
 * MailChimps API will return a json array as a response to our request. If an error occurs (when the status is
 * not 200), the json array will store the error messages in an index called "title".
 *
 * We can access it by $result[title]. The switch statement searches for known errors and spits out the
 * appropriate error to the end user.
 */
if($http_code != 200) {
    /** @var String $error - Represents the errors returned by the API. */
    $error = "";

    //Get the error
    switch($result['title']) {
        case 'Member Exists':
            $error = "$email has already subscribed.";
            break;
        default:
            $error = "Failed to subscribe $email to our newsletter.";
    }

    //Print out the error
    print json_encode(array(
        'status' => false,
        'response' => $error
    ));
} else {
    //No errors. IT WORKED!
    print json_encode(array(
        'status' => true
    ));
}
