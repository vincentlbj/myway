package com.myway.service.impl.hotel;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myway.dto.UserHotelOrder;
import com.myway.mapper.HotelMapper;
import com.myway.mapper.HotelOrderMapper;
import com.myway.pojo.Hotel;
import com.myway.pojo.HotelOrder;
import com.myway.pojo.HotelOrderExample;
import com.myway.service.hotel.HotelOrderService;

@Service
public class HotelOrderServiceImpl implements HotelOrderService {

	@Autowired
	private HotelOrderMapper hotelOrderMapper;

	@Autowired
	private HotelMapper hotelMapper;

	@Override
	public HotelOrder getHotelOrderById(int id) {
		return hotelOrderMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<UserHotelOrder> getUserHotelOrderByUserId(int id) {
		HotelOrderExample example = new HotelOrderExample();
		example.or().andUserIdEqualTo(id);
		List<HotelOrder> hotelOrderList = hotelOrderMapper.selectByExample(example);
		List<UserHotelOrder> userHotelOrderList = new ArrayList<UserHotelOrder>(hotelOrderList.size());
		for (HotelOrder hotelOrder : hotelOrderList) {
			UserHotelOrder uho = new UserHotelOrder();
			uho.setHotelOrder(hotelOrder);
			Hotel hotel = hotelMapper.selectByPrimaryKey(hotelOrder.getHotelId());
			uho.setHotel(hotel);
			userHotelOrderList.add(uho);
		}
		return userHotelOrderList;
	}

}
