import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteDataServlet")
public class DeleteDataServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name = (request.getParameter("name"));
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact", "root", "root");

            String sql = "DELETE FROM contact_us WHERE Name = ?";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, name);
            statement.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

       
        response.sendRedirect("submitted.jsp");
    }
}
