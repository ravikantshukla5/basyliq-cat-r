package com.mindtree.codebase.hms.room.vo;


public class RestApiRoom {
	private long id;
	private String roomNumber;
	private RestApiRoomType roomType;
	private Integer capacity;
	private Float rate;
	private String unit;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}
	public RestApiRoomType getRoomType() {
		return roomType;
	}
	public void setRoomType(RestApiRoomType roomType) {
		this.roomType = roomType;
	}
	public Integer getCapacity() {
		return capacity;
	}
	public void setCapacity(Integer capacity) {
		this.capacity = capacity;
	}
	public Float getRate() {
		return rate;
	}
	public void setRate(Float rate) {
		this.rate = rate;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}

}
