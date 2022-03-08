package com.human.fit;

public class Video {
	private int no;
	private String name;
	private String url;
	public Video() {
	}
	public Video(int no, String name, String url) {
		this.no = no;
		this.name = name;
		this.url = url;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
}
