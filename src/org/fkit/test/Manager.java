package org.fkit.test;
import java.io.Serializable;
public class Manager implements Serializable{
	private String loginname;
	private String password;
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String toString(){
		return "[loginname="+loginname+",password="+password+"]";
	}
}
