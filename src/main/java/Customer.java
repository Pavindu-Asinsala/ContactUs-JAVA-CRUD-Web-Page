
public class Customer {
	
	
	private String name;
	private String email;
	private String message;
	private String contact;

	
	public Customer( String Name, String email, String contact, String msg) {
		
		this.name = Name;
		this.email = email;
		this.message = msg;
		this.contact = contact;

	}
 

 
	public String getName() {
		return name;
	}
 
 
	public String getemail() {
		return email;
	}
	
 
	public String getContact() {
		return contact;
	}
 
	
 
	public String getmessage() {
		return message;
	}
 
	

}
