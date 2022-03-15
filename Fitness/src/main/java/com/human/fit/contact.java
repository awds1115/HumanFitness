package com.human.fit;

public class contact {
		private int no;
		private String name;
		private String email;
		private String mobile;
		private String message;
		public contact() {
		}
		public contact(int no, String name, String email, String mobile, String message) {
			this.no = no;
			this.name = name;
			this.email = email;
			this.mobile = mobile;
			this.message = message;
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
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getMobile() {
			return mobile;
		}
		public void setMobile(String mobile) {
			this.mobile = mobile;
		}
		public String getMessage() {
			return message;
		}
		public void setMessage(String message) {
			this.message = message;
		}
		
}
