package com.human.fit;

import java.util.ArrayList;

public interface iMypage {

	Mypage getView(String userid);

	void Mupdate(String id, String pw, String nname, String email, String phone, String address);

	ArrayList<Mypage> getpwCheck(String id);

	ArrayList<Mypage> getMCheck();

	void quitMember(String userid);

	void Nupdate(String id, String nname);

	

}
