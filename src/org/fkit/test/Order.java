package org.fkit.test;
import java.awt.List;
import java.io.Serializable;

public class Order implements Serializable{
	private String orderid;
	private String buyer;
	private double total_cost;
	private double discount;
	private String orderdate;
	private String buyer_phone;
	private String buyer_code;
	private String buyer_address;
	private String state;
	private String applystyle;
	private String delivery_date;
	private String express;
	private String expressid;
	private Integer productid;
	private Integer number;
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Integer getProductid() {
		return productid;
	}
	public void setProductid(Integer productid) {
		this.productid = productid;
	}
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getBuyer() {
		return buyer;
	}
	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}
	public double getTotal_cost() {
		return total_cost;
	}
	public void setTotal_cost(double total_cost) {
		this.total_cost = total_cost;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public String getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}
	public String getBuyer_phone() {
		return buyer_phone;
	}
	public void setBuyer_phone(String buyer_phone) {
		this.buyer_phone = buyer_phone;
	}
	public String getBuyer_code() {
		return buyer_code;
	}
	public void setBuyer_code(String buyer_code) {
		this.buyer_code = buyer_code;
	}
	public String getBuyer_address() {
		return buyer_address;
	}
	public void setBuyer_address(String buyer_address) {
		this.buyer_address = buyer_address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getApplystyle() {
		return applystyle;
	}
	public void setApplystyle(String applystyle) {
		this.applystyle = applystyle;
	}
	public String getDelivery_date() {
		return delivery_date;
	}
	public void setDelivery_date(String delivery_date) {
		this.delivery_date = delivery_date;
	}
	public String getExpress() {
		return express;
	}
	public void setExpress(String express) {
		this.express = express;
	}
	@Override
	public String toString(){
		return "[orderid="+orderid+",buyer="+buyer+",total_cost="+total_cost+",discount="
	+discount+",orderdate="+orderdate+",buyer_phone="+buyer_phone+",buyer_code="+buyer_code+",buyer_address="
				+buyer_address+",state="+state+",applystyle="+applystyle+",delivery_date="+delivery_date+",express="
				+express+",expressid="+expressid+",productid="+productid+",number="+number+"]";
	}
	public String getExpressid() {
		return expressid;
	}
	public void setExpressid(String expressid) {
		this.expressid = expressid;
	}
}
