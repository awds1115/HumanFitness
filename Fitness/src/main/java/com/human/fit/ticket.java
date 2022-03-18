package com.human.fit;

public class ticket {
	private String userid;
	private String sports_name;
	private String start_dt;
	private String end_dt;
	private String refund;
	public ticket() {
	}
	public ticket(String userid, String sports_name, String start_dt, String end_dt, String refund) {
		this.userid = userid;
		this.sports_name = sports_name;
		this.start_dt = start_dt;
		this.end_dt = end_dt;
		this.refund = refund;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getSports_name() {
		return sports_name;
	}
	public void setSports_name(String sports_name) {
		this.sports_name = sports_name;
	}
	public String getStart_dt() {
		return start_dt;
	}
	public void setStart_dt(String start_dt) {
		this.start_dt = start_dt;
	}
	public String getEnd_dt() {
		return end_dt;
	}
	public void setEnd_dt(String end_dt) {
		this.end_dt = end_dt;
	}
	public String getRefund() {
		return refund;
	}
	public void setRefund(String refund) {
		this.refund = refund;
	}
	
}
