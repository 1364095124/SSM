package org.fkit.test;

import java.io.Serializable;
public class Shop implements Serializable{
	private int shopid;
	private String shopname;
	private String introduction;
	private int managerid;
	public int getShopid() {
		return shopid;
	}
	public void setShopid(int shopid) {
		this.shopid = shopid;
	}
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public int getManagerid() {
		return managerid;
	}
	public void setManagerid(int managerid) {
		this.managerid = managerid;
	}
	
	@Override
	public String toString(){
		return "Shop[shopid="+shopid+",shopname="+shopname+",introduction="+introduction+",managerid="+managerid+"]";
	}
}
