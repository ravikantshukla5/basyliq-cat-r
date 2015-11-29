package com.mindtree.codebase.hms.room.service;

import com.mindtree.codebase.hms.room.exception.RestHMSException;
import com.mindtree.codebase.hms.room.vo.RestApiRoom;
import com.mindtree.codebase.hms.room.vo.RestApiRoomType;
import com.mindtree.codebase.hms.room.vo.RoomRentalRestApiResponse;

public interface RoomRentalRestApiService {
	RoomRentalRestApiResponse addRoom(RestApiRoom room) throws RestHMSException;
	RoomRentalRestApiResponse updateRoom(RestApiRoom room) throws RestHMSException;
	RoomRentalRestApiResponse getRooms() throws RestHMSException;
	RoomRentalRestApiResponse getRooms(RestApiRoomType roomType) throws RestHMSException;
	RoomRentalRestApiResponse loadRoom(RestApiRoom room) throws RestHMSException;

}
