package com.human.fit;

public class ticket {
	private String userid;
	private String sports_name;
	private String start_dt;
	private String end_dt;
	private int refund;
	private String ref_name;
	private int no_type;
	
	public ticket() {
	}

	public ticket(String userid, String sports_name, String start_dt, String end_dt, int refund, String ref_name,
			int no_type) {
		this.userid = userid;
		this.sports_name = sports_name;
		this.start_dt = start_dt;
		this.end_dt = end_dt;
		this.refund = refund;
		this.ref_name = ref_name;
		this.no_type = no_type;
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

	public int getRefund() {
		return refund;
	}

	public void setRefund(int refund) {
		this.refund = refund;
	}

	public String getRef_name() {
		return ref_name;
	}

	public void setRef_name(String ref_name) {
		this.ref_name = ref_name;
	}

	public int getNo_type() {
		return no_type;
	}

	public void setNo_type(int no_type) {
		this.no_type = no_type;
	}
	
}
