package com.myway.service.ticket;

import java.util.List;

import com.myway.dto.UserTicketOrder;
import com.myway.pojo.TicketOrder;

public interface TicketOrderService {
	public TicketOrder getTicketOrderById(int id);

	public List<UserTicketOrder> getUserTicketOrderByUserId(int id);
}
