package com.human.fit;

import java.util.ArrayList;

public interface iAdmin {
	ArrayList<membersA> findMem(String keyword); 
	 
	ArrayList<membersA> paging(int Start);
	
	ArrayList<membersA> members_admin();
	ArrayList<membersA> getMemInfo(String userid);
	void members_update(String userid,int type);
	void members_delete(String userid);
	void delete_mypage(String userid);
	ArrayList<membertype> getMtype();
	
	ArrayList<Mship> getMship(int code);
	
	void payment(String userid,String sports_name,String start_dt,String end_dt);

	ArrayList<membersA> findMempaging(String searchMem, int start);
}
