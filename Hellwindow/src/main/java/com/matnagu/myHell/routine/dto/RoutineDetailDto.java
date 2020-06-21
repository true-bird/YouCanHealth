package com.matnagu.myHell.routine.dto;

public class RoutineDetailDto {
	private int routineId;
	private int sportsDay;
	private String sportsName;
	private int sportsSet;
	private int sportsCount;
	private int seq;
	private String image;
	
	
	public RoutineDetailDto() {
	}
	
	public int getRoutineId() {
		return routineId;
	}
	public void setRoutineId(int routineId) {
		this.routineId = routineId;
	}
	public int getSportsDay() {
		return sportsDay;
	}
	public void setSportsDay(int sportsDay) {
		this.sportsDay = sportsDay;
	}
	public String getSportsName() {
		return sportsName;
	}
	public void setSportsName(String sportsName) {
		this.sportsName = sportsName;
	}
	public int getSportsSet() {
		return sportsSet;
	}
	public void setSportsSet(int sportsSet) {
		this.sportsSet = sportsSet;
	}
	public int getSportsCount() {
		return sportsCount;
	}
	public void setSportsCount(int sportsCount) {
		this.sportsCount = sportsCount;
	}
	
	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
}
