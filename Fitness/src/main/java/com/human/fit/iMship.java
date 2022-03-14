package com.human.fit;

import java.util.ArrayList;

public interface iMship {
	ArrayList<Mshiplist> myMship();
	ArrayList<Sportlist> getSports();
	 
	//회원권 CUD
	void Mshipadd(int code,String month,int price,int M_code);
	void Mshipupdate(int no,int price,String month,int M_code);
	void Mshipdelete(int no);
	
	//회원권 운동타입 CUD
	void Sportsadd(String sportsname);
	void Sportsupdate(int code, String sportsname);
	void Sportsdelete(int code);
}
