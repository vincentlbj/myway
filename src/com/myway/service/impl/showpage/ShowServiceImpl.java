package com.myway.service.impl.showpage;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myway.mapper.HotelMapper;
import com.myway.mapper.TicketMapper;
import com.myway.mapper.TourMapper;
import com.myway.pojo.Hotel;
import com.myway.pojo.Ticket;
import com.myway.pojo.Tour;
import com.myway.service.showpage.ShowService;

@Service
public class ShowServiceImpl implements ShowService {

	@Autowired
	private TourMapper tourMapper;
	@Autowired
	private HotelMapper hotelMapper;
	@Autowired
	private TicketMapper ticketMapper;

	@Override
	public List<Tour> getShowTour() {
		List<Tour> list = new ArrayList<Tour>();
		list.add(tourMapper.selectByPrimaryKey(2));
		list.add(tourMapper.selectByPrimaryKey(3));
		list.add(tourMapper.selectByPrimaryKey(4));
		return list;
	}

	@Override
	public List<Hotel> getShowHotel() {
		List<Hotel> list = new ArrayList<Hotel>();
		list.add(hotelMapper.selectByPrimaryKey(1));
		list.add(hotelMapper.selectByPrimaryKey(2));
		list.add(hotelMapper.selectByPrimaryKey(3));
		return list;
	}

	@Override
	public List<Ticket> getShowTicket() {
		List<Ticket> list = new ArrayList<Ticket>();
		list.add(ticketMapper.selectByPrimaryKey(2));
		list.add(ticketMapper.selectByPrimaryKey(3));
		list.add(ticketMapper.selectByPrimaryKey(4));
		return list;
	}

}
