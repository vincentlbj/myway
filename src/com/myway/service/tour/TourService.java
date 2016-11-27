package com.myway.service.tour;

import java.util.List;

import com.myway.pojo.Tour;
import com.myway.pojo.TourPrice;

public interface TourService {
	Tour getTourById(int id);

	List<TourPrice> getTourPriceByTourId(int id);
}
