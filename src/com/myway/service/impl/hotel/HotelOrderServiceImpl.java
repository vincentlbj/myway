package com.myway.service.impl.hotel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myway.mapper.HotelOrderMapper;
import com.myway.pojo.HotelOrder;
import com.myway.service.hotel.HotelOrderService;

@Service
public class HotelOrderServiceImpl implements HotelOrderService {

	@Autowired
	private HotelOrderMapper hotelOrderMapper;

	@Override
	public HotelOrder getHotelOrderById(int id) {
		return hotelOrderMapper.selectByPrimaryKey(id);
	}

}
