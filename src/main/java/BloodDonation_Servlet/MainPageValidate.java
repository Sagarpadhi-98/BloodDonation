package BloodDonation_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/mainpage")
public class MainPageValidate extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		long phone=Long.parseLong(req.getParameter("number"));
		String address=req.getParameter("address");
		String bloodgroup=req.getParameter("bloodgroup");
		String status="pending";
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donor","root","root");
			String sql="insert into bloodrequest values(?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setLong(2, phone);
			ps.setString(3, address);
			ps.setString(4, bloodgroup);
			ps.setString(5, status);
			
			 ps.execute();
			 
			 PrintWriter pw=resp.getWriter();
				pw.write("<html><body><h2>Data Enter Success</h2></body></html>");
				RequestDispatcher rsd=req.getRequestDispatcher("MainPage.html");
				rsd.include(req, resp);
				con.close();
			
		} catch (ClassNotFoundException e) {
			PrintWriter pw=resp.getWriter();
			pw.write("<html><body><h2 style='color:red'>Wrong Input</h2></body></html>");
			RequestDispatcher rsd=req.getRequestDispatcher("MainPage.html");
			rsd.include(req, resp);
			e.printStackTrace();
		} catch (SQLException e) {
			PrintWriter pw=resp.getWriter();
			pw.write("<html><body><h2 style='color:red'>Wrong Input</h2></body></html>");
			RequestDispatcher rsd=req.getRequestDispatcher("MainPage.html");
			rsd.include(req, resp);
			e.printStackTrace();
		}
	}

}
