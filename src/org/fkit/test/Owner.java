package org.fkit.test;
import java.io.Serializable;
public class Owner implements Serializable{
	private int id;
	private String loginname;
	private String password;
	private int is_admin;
	private int storeid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIs_admin() {
		return is_admin;
	}
	public void setIs_admin(int is_admin) {
		this.is_admin = is_admin;
	}
	public int getStoreid() {
		return storeid;
	}
	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}
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
		return "[id="+id+",loginname="+loginname+",password="+password+",is_admin="+is_admin+",storeid="+storeid+"]";
	}
}
