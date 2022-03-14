package com.human.fit;
 
public class Sportlist {
	private int code;
	private String sports_name;
	public Sportlist(int code, String sports_name) {
		this.code = code;
		this.sports_name = sports_name;
	}
	public Sportlist() {
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
	
}
