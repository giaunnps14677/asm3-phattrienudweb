package model;

public class Account {

	private String userMail;
	private String password;
	private int accountRole;
	private String userName;
	private String userAddress;
	private String userPhone;
	public Account(String userMail, String password, int accountRole, String userName, String userAddress,
			String userPhone) {
		super();
		this.userMail = userMail;
		this.password = password;
		this.accountRole = accountRole;
		this.userName = userName;
		this.userAddress = userAddress;
		this.userPhone = userPhone;
	}
	public Account() {
		super();
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAccountRole() {
		return accountRole;
	}
	public void setAccountRole(int accountRole) {
		this.accountRole = accountRole;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	
	
}
