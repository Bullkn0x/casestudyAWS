package creditcardwebapp;

import java.io.IOException;
import java.text.DecimalFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TransactionDao;
import model.transaction;

public class bytype extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {	
		String header = "Transactions_By_Type";
		TransactionDao td2 = new TransactionDao();
		String category = req.getParameter("category");
		
		transaction mytransaction2 = null;
		try {
			mytransaction2 = td2.gettotalbyType(category);
		} catch (Exception e) {
			e.printStackTrace();
		}
		DecimalFormat formatter = new DecimalFormat("#,###");
		req.setAttribute("count", formatter.format(mytransaction2.getCount())); 
		req.setAttribute("totalVal",formatter.format(mytransaction2.getValue())); 
		RequestDispatcher rd = req.getRequestDispatcher("bytype.jsp");
		rd.forward(req, res);
//		String format2 = "%-12s %-12s \n";
//		res.getWriter().format (format2 , "Count" , "Total Value"); 
//		res.getWriter().format(format2 , mytransaction2.getCount(), mytransaction2.getValue() );
	}


}





