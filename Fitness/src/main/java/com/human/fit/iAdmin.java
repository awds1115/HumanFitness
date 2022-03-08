package com.human.fit;

import java.util.ArrayList;

public interface iAdmin {
	ArrayList<membersA> findMem(String keyword); 
	
	ArrayList<membersA> members_admin();
	ArrayList<membersA> getMemInfo(String userid);
	void members_update(String userid,int type);
	void members_delete(String userid);
	ArrayList<membertype> getMtype();
	
	ArrayList<Mship> getMship(int code);
}
