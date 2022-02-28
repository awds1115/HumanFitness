package com.human.fit;

public class Mypage {
	private String userid;
	private String password;
	private String nickname;
	private String human_id;
	private int age;
	private String name;
	private int type;
	private String gender;
	private String mobile;
	private String address;
	private String email;
	private int question;
	private String answer;
	public Mypage() {
	}
	public Mypage(String userid, String password, String nickname, String human_id, int age, String name, int type,
			String gender, String mobile, String address, String email, int question, String answer) {
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
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getHuman_id() {
		return human_id;
	}
	public void setHuman_id(String human_id) {
		this.human_id = human_id;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getQuestion() {
		return question;
	}
	public void setQuestion(int question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
