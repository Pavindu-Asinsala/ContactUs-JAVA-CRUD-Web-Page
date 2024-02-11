

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactUsServlet")
public class ContactUsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String contactNumber = request.getParameter("contactNumber");
        String message = request.getParameter("message");
        
        
        try {
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","root");
          
              //insert user data into the database
            String sql = "INSERT INTO contact_us (Name, Email,Contact_number, Message) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, contactNumber);
            statement.setString(4, message);
            
            int rs = statement.executeUpdate();
            
            if (rs > 0) {
          	  List<Customer> customerList=ContactDbUtill.getCustomerDetails(name);
          	  
          	  request.setAttribute("customerList",customerList );
    			
    			RequestDispatcher dis = request.getRequestDispatcher("submitted.jsp");
    			dis.forward(request, response);
    			
            } else {
                
                response.sendRedirect("error.jsp"); // redirect to an error page
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();   
        }

        
        
        
        request.getRequestDispatcher("submitted.jsp").forward(request, response);
        
    }
}