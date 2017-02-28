package com.myway.service.tour;

import java.util.List;

import com.myway.dto.UserTourOrder;

public interface TourOrderService {
	List<UserTourOrder> getUserTourOrderByUserId(Integer id);
}
