package com.myway.service.impl.ticket;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myway.dto.UserTicketOrder;
import com.myway.mapper.TicketMapper;
import com.myway.mapper.TicketOrderMapper;
import com.myway.pojo.Ticket;
import com.myway.pojo.TicketOrder;
import com.myway.pojo.TicketOrderExample;
import com.myway.service.ticket.TicketOrderService;

@Service
public class TicketOrderServiceImpl implements TicketOrderService {

	@Autowired
	private TicketOrderMapper tickerOrderMapper;

	@Autowired
	private TicketMapper tickerMapper;

	@Override
	public TicketOrder getTicketOrderById(int id) {
		return tickerOrderMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<UserTicketOrder> getUserTicketOrderByUserId(int id) {
		TicketOrderExample example = new TicketOrderExample();
		example.or().andUserIdEqualTo(id);
		List<TicketOrder> ticketOrderList = tickerOrderMapper.selectByExample(example);
		List<UserTicketOrder> userTicketOrderList = new ArrayList<UserTicketOrder>(ticketOrderList.size());
		for (TicketOrder ticketOrder : ticketOrderList) {
			UserTicketOrder uto = new UserTicketOrder();
			uto.setTicketOrder(ticketOrder);
			Ticket ticket = tickerMapper.selectByPrimaryKey(ticketOrder.getTicketId());
			uto.setTicket(ticket);
			userTicketOrderList.add(uto);
		}
		return userTicketOrderList;
	}

}
