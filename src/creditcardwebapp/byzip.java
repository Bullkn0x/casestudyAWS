package creditcardwebapp;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TransactionDao;
import model.transaction;

public class byzip extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		TransactionDao td1 = new TransactionDao();
		int zip= Integer.parseInt(req.getParameter("zipcode"));
		int month= Integer.parseInt(req.getParameter("date").split("-")[1]);
		int year= Integer.parseInt(req.getParameter("date").split("-")[0]);
		System.out.println(year+" " +month);
		List<transaction> list = null;
		try {
			list = td1.gettotalbyZip(zip, month, year);
		} catch (Exception e) {
			e.printStackTrace();
		}
		DecimalFormat formatter = new DecimalFormat("#,###");
		req.setAttribute("outputlist", list); 
		req.setAttribute("title", zip);
		RequestDispatcher rd = req.getRequestDispatcher("byzip.jsp");
		rd.forward(req, res);
		
//		String format1 = "%-15s %-12s %-5s %-4s %-5s %-13s %-17s %-16s %-12s\n";
//		System.out.format (format1 ,"Tranasction ID", "Branch Code" , "Month", 
//				"Day", "Year", "Customer SSN", "Credit Card #" , 
//				"Transacton Value" , "Transaction Type" ); 
//		for(transaction transaction: list) {
//			System.out.format(format1 , transaction.getID(), transaction.getBranchCode(), transaction.getMonth(), 
//					transaction.getDay(), transaction.getYear(), transaction.getSsn(), transaction.getCardNo(), 
//					transaction.getValue(), transaction.getType());
//
//		}
	}
}
