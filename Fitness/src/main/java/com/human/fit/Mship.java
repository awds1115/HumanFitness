package com.human.fit;

public class Mship {
	int code;
	String sports_name;
	String month;
	int price;
	public Mship() {
	}
	public Mship(int code, String sports_name, String month, int price) {
		this.code = code;
		this.sports_name = sports_name;
		this.month = month;
		this.price = price;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getSports_name() {
		return sports_name;
	}
	public void setSports_name(String sports_name) {
		this.sports_name = sports_name;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
