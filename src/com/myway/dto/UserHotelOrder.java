package com.myway.dto;

import com.myway.pojo.Hotel;
import com.myway.pojo.HotelOrder;

public class UserHotelOrder {
	Hotel hotel;
	HotelOrder hotelOrder;

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public HotelOrder getHotelOrder() {
		return hotelOrder;
	}

	public void setHotelOrder(HotelOrder hotelOrder) {
		this.hotelOrder = hotelOrder;
	}

}
