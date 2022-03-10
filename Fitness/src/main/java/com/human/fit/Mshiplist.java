package com.human.fit;

public class Mshiplist {
	int no;
	String sports_name;
	String month;
	int price;
	public Mshiplist(int no, String sports_name, String month, int price) {
		this.no = no;
		this.sports_name = sports_name;
		this.month = month;
		this.price = price;
	}
	public Mshiplist() {
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
