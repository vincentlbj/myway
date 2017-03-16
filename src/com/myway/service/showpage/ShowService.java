package com.myway.service.showpage;

import java.util.List;

import com.myway.pojo.Hotel;
import com.myway.pojo.Ticket;
import com.myway.pojo.Tour;

public interface ShowService {
	List<Tour> getShowTour();

	List<Hotel> getShowHotel();

	List<Ticket> getShowTicket();
}
