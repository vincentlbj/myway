package com.myway.service.impl.ticket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myway.mapper.TicketOrderMapper;
import com.myway.pojo.TicketOrder;
import com.myway.service.ticket.TicketOrderService;

@Service
public class TicketOrderServiceImpl implements TicketOrderService {

	@Autowired
	private TicketOrderMapper tickerOrderMapper;

	@Override
	public TicketOrder getTicketOrderById(int id) {
		return tickerOrderMapper.selectByPrimaryKey(id);
	}

}
