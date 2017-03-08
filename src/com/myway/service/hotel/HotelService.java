package com.myway.service.hotel;

import java.util.List;

import com.myway.pojo.Hotel;
import com.myway.pojo.HotelOrder;

public interface HotelService {
	Hotel getHotelById(int id);

	int confirmHotelOrder(HotelOrder hotelOrder) throws RuntimeException;

	List<Hotel> getHotelByCriteria(Hotel queryHotel, Integer pageNum, Integer pageSize);
}
