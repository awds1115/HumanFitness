package com.human.fit;

public class p_reply {
//	no	int	NO	PRI		auto_increment
//	bno	int	NO	MUL		
//	grp	int	NO			
//	grps	int	NO			
//	grpl	int	NO			
//	writer	varchar(100)	NO	MUL		
//	content	varchar(1000)	YES			
//	wdate	datetime	NO		
	int no;
	int bno;
	int grp;
	int grps;
	int grpl;
	String writer;
	String content;
	String wdate;
	public p_reply() {
	}
	public p_reply(int no, int bno, int grp, int grps, int grpl, String writer, String content, String wdate) {
		this.no = no;
		this.bno = bno;
		this.grp = grp;
		this.grps = grps;
		this.grpl = grpl;
		this.writer = writer;
		this.content = content;
		this.wdate = wdate;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getGrp() {
		return grp;
	}
	public void setGrp(int grp) {
		this.grp = grp;
	}
	public int getGrps() {
		return grps;
	}
	public void setGrps(int grps) {
		this.grps = grps;
	}
	public int getGrpl() {
		return grpl;
	}
	public void setGrpl(int grpl) {
		this.grpl = grpl;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	
	
}
