package com.myway.service.hotel;

import java.util.List;

import com.myway.dto.UserHotelOrder;
import com.myway.pojo.HotelOrder;

public interface HotelOrderService {
	public HotelOrder getHotelOrderById(int id);

	public List<UserHotelOrder> getUserHotelOrderByUserId(int id);
}
