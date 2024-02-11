import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ContactDbUtill {
	
	public static List<Customer> getCustomerDetails(String sname) {
        List<Customer> customerList = new ArrayList<>();
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","root");
        
          
          String sql = "SELECT * FROM contact_us WHERE Name='"+sname+"'";
          Statement statement = con.createStatement();
	      ResultSet rs = statement.executeQuery(sql);
	        
	        if(rs.next()) {
	        	
	        	
	            String name = rs.getString(1);
	            String email = rs.getString(2);
	            String contact = rs.getString(3);
	            String message = rs.getString(4);
	            
	            
	            Customer c=new Customer( name,email,contact,message);
				
				customerList.add(c);
	        }
      } catch (Exception e) {
          e.printStackTrace();   
      }
       return customerList; 
	}

}
