package com.springbook.biz.planner;

public class PlannerVO {
	
	private String user_id; // 회원 아이디
	private String planner_no; //추가
	private String room_name; // 숙소명
	private String planner_start; // 여행 시작일
	private String planner_end;  // 여행 종료일
	private String planner_area; // 여행 지역
	private String planner_title; // 플레너 제목
	private String planner_day; // 여행 기간
	private int planner_like;
	private String planner_show;
	private String status;
	private int planner_areaNum;
	
	
	
	public int getPlanner_areaNum() {
		return planner_areaNum;
	}
	public void setPlanner_areaNum(int planner_areaNum) {
		this.planner_areaNum = planner_areaNum;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPlanner_show() {
		return planner_show;
	}
	public void setPlanner_show(String planner_show) {
		this.planner_show = planner_show;
	}
	public int getPlanner_like() {
		return planner_like;
	}
	public void setPlanner_like(int planner_like) {
		this.planner_like = planner_like;
	}
	public String getPlanner_no() {
		return planner_no;
	}
	public void setPlanner_no(String planner_no) {
		this.planner_no = planner_no;
	}
	
	public String getPlanner_area() {
		return planner_area;
	}
	public void setPlanner_area(String planner_area) {
		this.planner_area = planner_area;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public String getPlanner_start() {
		return planner_start;
	}
	public void setPlanner_start(String planner_start) {
		this.planner_start = planner_start;
	}
	public String getPlanner_end() {
		return planner_end;
	}
	public void setPlanner_end(String planner_end) {
		this.planner_end = planner_end;
	}
	public String getPalnner_area() {
		return planner_area;
	}
	public void setPalnner_area(String palnner_area) {
		this.planner_area = palnner_area;
	}
	public String getPlanner_title() {
		return planner_title;
	}
	public void setPlanner_title(String planner_title) {
		this.planner_title = planner_title;
	}
	public String getPlanner_day() {
		return planner_day;
	}
	public void setPlanner_day(String planner_day) {
		this.planner_day = planner_day;
	}
}
