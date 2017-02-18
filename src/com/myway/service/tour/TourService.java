package com.myway.service.tour;

import java.util.List;

import com.myway.pojo.Tour;
import com.myway.pojo.TourMember;
import com.myway.pojo.TourOrder;
import com.myway.pojo.TourPrice;

public interface TourService {
	Tour getTourById(int id);

	List<TourPrice> getTourPriceByTourId(int id);

	TourPrice getTourPriceByPriceId(int id);

	int confirmTourOrder(String token, TourOrder tourOrder, TourMember tourMember);

	List<Tour> getTourByCriteria(Tour queryTour, Integer pageNum, Integer pageSize);

	List<Tour> searchTourByNames(String[] names, Integer pageNum, Integer pageSize);

}
