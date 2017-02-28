package com.myway.dto;

import com.myway.pojo.Tour;
import com.myway.pojo.TourOrder;

public class UserTourOrder {
	Tour tour;
	TourOrder tourOrder;

	public Tour getTour() {
		return tour;
	}

	public void setTour(Tour tour) {
		this.tour = tour;
	}

	public TourOrder getTourOrder() {
		return tourOrder;
	}

	public void setTourOrder(TourOrder tourOrder) {
		this.tourOrder = tourOrder;
	}

}
