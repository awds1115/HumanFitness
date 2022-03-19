package com.human.fit;

import java.util.ArrayList;

public interface iMypage {

	Mypage getView(String userid);

	void Mupdate(String id, String pw, String nname, String email, String phone, String address);

	ArrayList<Mypage> getpwCheck(String id);

	ArrayList<Mypage> getMCheck();

	void quitMember(String userid);

	void Nupdate(String id, String nname);

	void bmicheck(String userid, int weight, int height);

	Mypage getWeight(String userid);

	ArrayList<ticket> getticket(String id);

	void ticketed(String userid, String sports);

	void newcontact(String name, String email, String mobile, String message);

	ArrayList<contact> getcontact();

	ArrayList<contact> getmailview(int no);

	void maildel(int no);

	void mail_del(String string);

	ArrayList<contact> findmail(String find);

	ArrayList<contact> contactList(int start);

	ArrayList<contact> findpaging(int start, String find);

	ArrayList<contact> findpagingcheck(int start, String find);

	ArrayList<ticket> getRefundList();

	void updateref();

	void delref(String userid, String spname, int ref_no);

	ArrayList<ticket> getref_type();

	ArrayList<ticket> getstatList(String stat);


	
}
