package creditcardwebapp;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TransactionDao;
import model.transaction;

public class transactionbetweendates extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		TransactionDao td7 = new TransactionDao();
		System.out.print("\nPlease enter the last 4 digits of your social security number: ");
		System.out.print("\nPlease enter a card number associated with your account: ");
		String cardnumber7 = req.getParameter("cardNumber");
		int ssn7 = Integer.parseInt(req.getParameter("ssn"));
		String date1 = req.getParameter("startDate");
		System.out.println(date1);
		String date2 = req.getParameter("endDate");
		System.out.println(date2);
		List<transaction> listbetweendates = null;
		try {
			listbetweendates = td7.transactionsbetweenDates(cardnumber7, ssn7, date1, date2);
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.setAttribute("outputlist",listbetweendates);
		RequestDispatcher rd = req.getRequestDispatcher("betweendates.jsp");
		rd.forward(req, res);
//		String format7 = "%-18s %-12s %-17s %-18s %-15s\n";
//		res.getWriter().format(format7, "Credit Card #", "SSN", "Transaction Value", "Transaction Type", "Date");
//		for (transaction transaction : listbetweendates) {
//			res.getWriter().format(format7, transaction.getCardNo(), transaction.getSsn(), "$" + transaction.getValue(),
//					transaction.getType(), dateformat(transaction.getDate()));
//		}
//		System.out.println("DONE");

	}
	public static String dateformat(String date) {
		String[] datearray = date.split("-");
		String dateformat="";
		for (int i = 0; i < datearray.length ; i++) {
			dateformat=datearray[1]+ "/" +datearray[2] + "/" + datearray[0];
		}
		
		return dateformat;
	}
	public static String datearrange(String date) {
		String[] datearray = date.split("");
		String datenew= "";
		for (int i = 0 ;  i< datearray.length ; i++) {
			if (datearray[i].length() <2) {
				datearray[i]="0" +datearray[i];	
			}
			datenew=datearray[2]+datearray[0]+datearray[1];
		}
		return datenew;
	}
}
