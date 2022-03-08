package com.human.fit;

public class Register {
	String userid;
	String password;
	String nickname;
	String human_id;
	int age;
	String name;
	int type;
	String gender;
	String mobile;
	String address;
	String email;
	int question;
	String answer ;
	int q_code;
	String q_type;
	public Register() {
	}
	public Register(String userid, String password, String nickname, String human_id, int age, String name, int type,
			String gender, String mobile, String address, String email, int question, String answer, int q_code,
			String q_type) {
		this.userid = userid;
		this.password = password;
		this.nickname = nickname;
		this.human_id = human_id;
		this.age = age;
		this.name = name;
		this.type = type;
		this.gender = gender;
		this.mobile = mobile;
		this.address = address;
		this.email = email;
		this.question = question;
		this.answer = answer;
		this.q_code = q_code;
		this.q_type = q_type;
	}
	public String getUserid() {
		return userid;
	}
	public String getPassword() {
		return password;
	}
	public String getNickname() {
		return nickname;
	}
	public String getHuman_id() {
		return human_id;
	}
	public int getAge() {
		return age;
	}
	public String getName() {
		return name;
	}
	public int getType() {
		return type;
	}
	public String getGender() {
		return gender;
	}
	public String getMobile() {
		return mobile;
	}
	public String getAddress() {
		return address;
	}
	public String getEmail() {
		return email;
	}
	public int getQuestion() {
		return question;
	}
	public String getAnswer() {
		return answer;
	}
	public int getQ_code() {
		return q_code;
	}
	public String getQ_type() {
		return q_type;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public void setHuman_id(String human_id) {
		this.human_id = human_id;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setType(int type) {
		this.type = type;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setQuestion(int question) {
		this.question = question;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public void setQ_code(int q_code) {
		this.q_code = q_code;
	}
	public void setQ_type(String q_type) {
		this.q_type = q_type;
	}
	
}