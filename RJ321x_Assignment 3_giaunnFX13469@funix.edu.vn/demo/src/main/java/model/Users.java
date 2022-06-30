package model;

public class Users {
	private String userMail;
	private String password;
	private int role;
	public Users(String userMail, String password, int role) {
		super();
		this.userMail = userMail;
		this.password = password;
		this.role = role;
	}
	public Users() {
		super();
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
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
	@Override
	public String toString() {
		return "Users [userMail=" + userMail + ", password=" + password + "]";
	}
}
