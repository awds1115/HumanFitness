package com.human.fit;

import java.util.ArrayList;



public interface iRegeister {
	Register id_check(String userid); // 아이디 중복확인
	Register nickname_check(String nickname); //닉네임 중복확인 
	void insertMember(String userid,
					  String password,
					  String nickname,
					  String human_id,
					  int age,
					  String name,
					  int type,
					  String gender,
					  String mobile,
					  String address,
					  String email,
					  int question,
					  String answer); //회원가입
	ArrayList<Register> question(); //질의응답 dto
	void insertbmi(String userid); //bmi dto
	ArrayList<Register> id__check(String userid); //아이디 유효성
	Register getMember(String userid); //이것도 유효성
	ArrayList<Register> questlist(); //비밀번호 찾기중 목록
	ArrayList<Register> findId(String email); //아이디 찾기
	ArrayList<Register> getfindid(); //이메일 과 실명 맞을때만 찾게 (대조)
	ArrayList<Register> findPassword(String userid);
	ArrayList<Register> getfindPassword();
}

