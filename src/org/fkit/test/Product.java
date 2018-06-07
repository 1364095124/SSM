package org.fkit.test;

import java.io.Serializable;
public class Product implements Serializable{
	private Integer productid;
	private String productname;
	private String picture_title;
	private String title;
	private String origin;
	private String material;
	private String brand;
	private String weight;
	private String unit;
	private double r_price;
	private double new_price;
	private String key_word;
	private String content;
	private String images;
	private String storeid;
	private String state;
	private Integer remain;
	public Integer getRemain() {
		return remain;
	}
	public void setRemain(Integer remain) {
		this.remain = remain;
	}
	public String getStoreid() {
		return storeid;
	}
	public void setStoreid(String storeid) {
		this.storeid = storeid;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(Integer productid) {
		this.productid = productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getPicture_title() {
		return picture_title;
	}
	public void setPicture_title(String picture_title) {
		this.picture_title = picture_title;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public double getR_price() {
		return r_price;
	}
	public void setR_price(double r_price) {
		this.r_price = r_price;
	}
	public double getNew_price() {
		return new_price;
	}
	public void setNew_price(double new_price) {
		this.new_price = new_price;
	}
	public String getKey_word() {
		return key_word;
	}
	public void setKey_word(String key_word) {
		this.key_word = key_word;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}

	@Override
	public String toString(){
		return "Product[productid="+productid+",productname="+productname+",picture_title="
				+picture_title+",title="+title+",origin="+origin+",material="+material+",brand="+brand+",weight="
				+weight+",unit="+unit+",r_price="+r_price+",new_price="+new_price+",key_word="
				+key_word+",content="+content+",images="+images+",storeid="+storeid+",state="+state+",remain="+remain+"]";
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
}
