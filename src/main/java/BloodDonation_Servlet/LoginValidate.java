package BloodDonation_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/loginvalidate")
public class LoginValidate extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		PrintWriter pw=resp.getWriter();
		
		
		if (username.equals("admin@gmail.com") && password.equals("admin")) {
			pw.write("<h2>Login Successful</h2>");
			RequestDispatcher rd=req.getRequestDispatcher("WelcomePage.jsp");
			rd.forward(req, resp);
		}
		
		else {
			pw.write("<html><body>");
			pw.write("<h2 style='color: white'>Wrong username & password ! try again !</h2>");
			pw.write("</html></body>");
			RequestDispatcher rd=req.getRequestDispatcher("AdminLogin.html");
			rd.include(req, resp);
		}
		
		
	}

}
