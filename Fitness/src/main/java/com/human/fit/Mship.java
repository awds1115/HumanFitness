package com.human.fit;

public class Mship {
	int code;
	String sports_name;
	String month;
	int price;
	int M_code;
	public Mship() {
	} 
	public Mship(int code, String sports_name, String month, int price, int m_code) {
		this.sports_name = sports_name;
		this.month = month;
		this.price = price;
		this.code = code;
		M_code = m_code;
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
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getM_code() {
		return M_code;
	}
	public void setM_code(int m_code) {
		M_code = m_code;
	}
	
}
