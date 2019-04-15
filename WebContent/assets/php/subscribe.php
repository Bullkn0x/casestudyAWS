<?php
   
    
//
// config
// --------------------------------------------------
//

  /**
   * subscribe method, choose one
   */

  // 'mailchimp' or 'txt'
  $METHOD = 'mailchimp';

  /**
   * if `$METHOD = 'mailchimp'` - mailchimp (recommend)
   */

  // mailchimp api key - http://admin.mailchimp.com/account/api/
  $MC_API_KEY = '77f6989ef08b7bbd622837862aed97e0-us19';

  // mailchimp list id - http://admin.mailchimp.com/lists/
  $MC_LIST_ID = '34cde5bdae';

  /*
   * if `$METHOD = 'txt'` - save email list to txt file
   */

  // subscribe list txt file path and name
  // email list will save into this file, so the txt file path / name should be special for more safe
  $FILE_PATH = 'assets/php/subscribe.txt';

//
// script
// --------------------------------------------------
//

  if($_SERVER['REQUEST_METHOD'] != 'POST') {
    die('An error occurred. Please try again later.');
  } else {
    if (empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) != 'xmlhttprequest') {
      die('Only allow access via AJAX');
    } else {
      if ($METHOD == 'mailchimp') {
        if (empty($MC_API_KEY) || empty($MC_LIST_ID)) {
          die(json_encode(array('type' => 'error', 'msg' => '<i class="error"></i> Please check php config field.')));
        } else {
           
      if(!empty($_POST['streamer'])) $streamer=$_POST['streamer']; else  $streamer='';
      if(!empty($_POST['paid_stream'])) $paid_stream=$_POST['paid_stream']; else  $paid_stream='';
            //new code//
    if(!empty($_POST['platforms']) && $_POST['platforms']!='Other')
    $platform=$_POST['platforms'];
    else if($_POST['platforms']=='Other')
    $platform=$_POST['other_platform'];
    else
    $platform='';
    if(!empty($_POST['streamer_username'])) 
    $streamer_username=$_POST['streamer_username']; else  $streamer_username='';
    
    
    if($_POST['how_find']=='Streamer' && !empty($_POST['streamer_name']))
      $how_find=$_POST['how_find'].' ('.$_POST['streamer_name'].')';
      else
      $how_find=$_POST['how_find'];
             $data = [
    'email'     => $_POST['email'],
    'status'    => 'subscribed',
    'streamer'  =>$streamer,
    'streamer_username'  =>$streamer_username,
   'paid_stream'  =>$paid_stream,
    'platforms'  =>$platform,
    'average_stream_viewers'  =>$_POST['average_stream_viewers'],
    'average_followers'  =>$_POST['average_followers'],
    'how_find'  =>$how_find
    ];

//print_r($data);
    $apiKey = '77f6989ef08b7bbd622837862aed97e0-us19';
    $listId = '34cde5bdae';

    $memberId = md5(strtolower($data['email']));
    $dataCenter = substr($apiKey,strpos($apiKey,'-')+1);
    $url = 'https://' . $dataCenter . '.api.mailchimp.com/3.0/lists/' . $listId . '/members/' . $memberId;

    $json = json_encode([
        'email_address' => $data['email'],
        'status'        => $data['status'],
       /* 'merge_fields'  => array(
                            'STREAMER' => 'Yes',
                            'STREAMERP' => 'Yes',
                            'PLATFORM' => 'YouTube',
                            'AVERAGEST' => '0-500',
                            'AVERAGEFO' => '500-1000',
                            'HOWFIND' => 'Internet'
        )*/
       'merge_fields'  => array(
                            'STREAMER' => $data['streamer'],
                            'STREAMERU' => $data['streamer_username'],
                            'STREAMERP' => $data['paid_stream'],
                            'PLATFORM' => $data['platforms'],
                            'AVERAGEST' => $data['average_stream_viewers'],
                            'AVERAGEFO' => $data['average_followers'],
                            'HOWFIND' => $data['how_find']
        )/// "subscribed","unsubscribed","cleaned","pending"
       
    ]);

    $ch = curl_init($url);

    curl_setopt($ch, CURLOPT_USERPWD, 'user:' . $apiKey);
    curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json']);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_TIMEOUT, 10);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'PUT');
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $json);                                                                                                                 

    $result = curl_exec($ch);
    $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    curl_close($ch);
   //die(print_r($result));
 // die($json);
 die(json_encode(array('type' => 'success', 'msg' => '<i class="success"></i> You have been successfully subscribed.')));
            //end
            
            
          require_once('vendor/mailchimp/MCAPI.class.php');
          extract($_POST, EXTR_PREFIX_ALL, 'form');

          $api = new MCAPI($MC_API_KEY);

          if ($api->listSubscribe($MC_LIST_ID, $form_email) !== true) {
            if ($api->errorCode == 104) {
              $msg = '<i class="error"></i> Invalid API KEY';
            } else if ($api->errorCode == 200) {
              $msg = '<i class="error"></i> Invalid LIST ID';
            } else if ($api->errorCode == 214) {
              $msg = '<i class="error"></i> Subscription already exists';
            } else {
              $msg = $api->errorMessage;
            }
            die(json_encode(array('type' => 'error', 'msg' => $msg)));
          } else {
            die(json_encode(array('type' => 'success', 'msg' => '<i class="success"></i> We just sent you a confirmation email')));
          }
        }
      } else if ($METHOD == 'txt') {
        if (empty($FILE_PATH)) {
          die(json_encode(array('type' => 'error', 'msg' => '<i class="error"></i> Please check php config field.')));
        } else {
          extract($_POST, EXTR_PREFIX_ALL, 'form');

          if (strpos(file_get_contents($FILE_PATH), $form_email) == true) {
            die(json_encode(array('type' => 'error', 'msg' => '<i class="error"></i> Subscription already exists.')));
          } else {
            file_put_contents($FILE_PATH, date("Y-m-d H:i:s").' - '.$form_email."\n", FILE_APPEND | LOCK_EX); // LOCK_EX available since PHP 5.1.0+
            die(json_encode(array('type' => 'success', 'msg' => '<i class="success"></i> You have been successfully subscribed.')));
          }
        }
      }
    }
  }
?>
