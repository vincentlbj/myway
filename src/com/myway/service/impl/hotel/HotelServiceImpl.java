package com.myway.service.impl.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.myway.mapper.HotelMapper;
import com.myway.mapper.HotelOrderMapper;
import com.myway.pojo.Hotel;
import com.myway.pojo.HotelExample;
import com.myway.pojo.HotelOrder;
import com.myway.pojo.HotelOrderExample;
import com.myway.service.hotel.HotelService;

@Service
public class HotelServiceImpl implements HotelService {

	@Autowired
	private HotelMapper hotelMapper;

	@Autowired
	private HotelOrderMapper hotelOrderMapper;

	@Override
	public Hotel getHotelById(int id) {
		return hotelMapper.selectByPrimaryKey(id);
	}

	@Override
	public int confirmHotelOrder(HotelOrder hotelOrder) throws RuntimeException {
		// 避免重复提交表单
		HotelOrderExample hotelOrderExample = new HotelOrderExample();
		hotelOrderExample.or().andTokenEqualTo(hotelOrder.getToken());
		List<HotelOrder> existOrderList = hotelOrderMapper.selectByExample(hotelOrderExample);
		if (existOrderList.size() > 0) {
			return -1;
		}
		hotelOrderMapper.insertSelective(hotelOrder);
		return hotelOrder.getId();
	}

	@Override
	public List<Hotel> getHotelByCriteria(Hotel queryHotel, Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		HotelExample hotelExample = new HotelExample();
		if (queryHotel.getName() != null && !queryHotel.getName().equals(""))
			hotelExample.or().andNameLike("%" + queryHotel.getName() + "%");
		List<Hotel> list = hotelMapper.selectByExample(hotelExample);
		return list;
	}

}
