package com.matnagu.myHell.user.dto;

public class UserDto {
	private int seq;//시퀀스
	private String id;//아이디
	private String password;//비밀번호
	private String name;//이름
	private String birth;//생년월일
	private char sex;//성별
	private int exerdate; //운동경력
	private int rating; //등급
	private String manager;//관리자 등급
	
	public UserDto() {
		
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public char getSex() {
		return sex;
	}

	public void setSex(char sex) {
		this.sex = sex;
	}

	public int getExerdate() {
		return exerdate;
	}

	public void setExerdate(int exerdate) {
		this.exerdate = exerdate;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}
}
