package com.myway.service.tour;

import java.util.List;

import com.myway.dto.UserTourOrder;
import com.myway.pojo.TourOrder;

public interface TourOrderService {
	List<UserTourOrder> getUserTourOrderByUserId(Integer id);

	TourOrder getTourOrder(int id);
}
