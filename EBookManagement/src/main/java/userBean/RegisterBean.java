package userBean;

public class RegisterBean
{
       public RegisterBean(String name, String email, String pass, String mobile, String checkCondi)
       {
		
		this.setName(name); 
		this.setEmail(email);
		this.setPass(pass);
		this.setMobile(mobile);
		this.setCheckCondi(checkCondi);
	}

	public RegisterBean()
	{
		// TODO Auto-generated constructor stub
	}

	private String name,email,pass,mobile,checkCondi;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getCheckCondi() {
		return checkCondi;
	}

	public void setCheckCondi(String checkCondi) {
		this.checkCondi = checkCondi;
	}
}
