package com.mindtree.codebase.hms.room.vo;

import java.util.List;

public class RoomRentalRestApiResponse {
	private Boolean addOrUpdateStatus;
	private List<RestApiRoom> allRooms;
	private List<RestApiRoom> roomsBasedOnRoomType;
	private RestApiRoom loadARoom;
	private Boolean status;
	private String statusText;
	public Boolean getAddOrUpdateStatus() {
		return addOrUpdateStatus;
	}
	public void setAddOrUpdateStatus(Boolean addOrUpdateStatus) {
		this.addOrUpdateStatus = addOrUpdateStatus;
	}
	public List<RestApiRoom> getAllRooms() {
		return allRooms;
	}
	public void setAllRooms(List<RestApiRoom> allRooms) {
		this.allRooms = allRooms;
	}
	public List<RestApiRoom> getRoomsBasedOnRoomType() {
		return roomsBasedOnRoomType;
	}
	public void setRoomsBasedOnRoomType(List<RestApiRoom> roomsBasedOnRoomType) {
		this.roomsBasedOnRoomType = roomsBasedOnRoomType;
	}
	public RestApiRoom getLoadARoom() {
		return loadARoom;
	}
	public void setLoadARoom(RestApiRoom loadARoom) {
		this.loadARoom = loadARoom;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public String getStatusText() {
		return statusText;
	}
	public void setStatusText(String statusText) {
		this.statusText = statusText;
	}
    
}
