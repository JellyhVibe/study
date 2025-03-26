package egovframework.example.sample.dto;

public class formDto {
	
	private String formName;
	private int phone;
	private String address;
	private String email;
	private String message;
	
	//gatter
	public String getFormName() {
		return formName;
	}

	//setter
	public void setFormName(String formName) {
		this.formName = formName;
	}
	
	public int getPhone() {
		return phone;
	}
	
	public void setPhone(int phone) {
		this.phone = phone;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getMessage() {
		return message;
	}
	
	public void setMessage() {
		this.message = message;
	}
	
}
