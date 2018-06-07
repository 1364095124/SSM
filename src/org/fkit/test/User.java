package org.fkit.test;
import java.io.Serializable;
public class User implements Serializable{
	private int customerid;
	private String customername;
	private String gender;
	private int shopid;
	
	public int getShopid() {
		return shopid;
	}
	public void setShopid(int shopid) {
		this.shopid = shopid;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	
	@Override
	public String toString(){
		return "User[customerid="+customerid+",customername="+customername+",gender="+gender+"]";
	}
}
