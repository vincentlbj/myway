package com.myway.service.impl.tour;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myway.dto.UserTourOrder;
import com.myway.mapper.TourMapper;
import com.myway.mapper.TourOrderMapper;
import com.myway.mapper.TourPriceMapper;
import com.myway.pojo.Tour;
import com.myway.pojo.TourOrder;
import com.myway.pojo.TourOrderExample;
import com.myway.pojo.TourPrice;
import com.myway.service.tour.TourOrderService;

@Service
public class TourOrderServiceImpl implements TourOrderService {

	@Autowired
	private TourOrderMapper tourOrderMapper;

	@Autowired
	private TourMapper tourMapper;

	@Autowired
	private TourPriceMapper tourPriceMapper;

	@Override
	public List<UserTourOrder> getUserTourOrderByUserId(Integer id) {
		TourOrderExample tourOrderExample = new TourOrderExample();
		tourOrderExample.or().andUIdEqualTo(id);
		List<TourOrder> tourOrderList = tourOrderMapper.selectByExample(tourOrderExample);
		List<UserTourOrder> userTourOrderList = new ArrayList<UserTourOrder>(tourOrderList.size());
		for (TourOrder tourOrder : tourOrderList) {
			TourPrice tourPrice = tourPriceMapper.selectByPrimaryKey(tourOrder.getpId());
			Tour tour = tourMapper.selectByPrimaryKey(tourPrice.gettId());
			UserTourOrder userTourOrder = new UserTourOrder();
			userTourOrder.setTour(tour);
			userTourOrder.setTourOrder(tourOrder);
			userTourOrderList.add(userTourOrder);
		}
		return userTourOrderList;
	}

}
