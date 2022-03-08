package com.human.fit;

public class membertype {
	int mtype_code;
	String mtype;
	public membertype() {
	}
	public membertype(int mtype_code, String mtype) {
		this.mtype_code = mtype_code;
		this.mtype = mtype;
	}
	public int getMtype_code() {
		return mtype_code;
	}
	public void setMtype_code(int mtype_code) {
		this.mtype_code = mtype_code;
	}
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	
}
