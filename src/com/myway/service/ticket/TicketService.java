package com.myway.service.ticket;

import java.util.List;

import com.myway.pojo.Ticket;
import com.myway.pojo.TicketOrder;
import com.myway.pojo.TicketWithBLOBs;

public interface TicketService {
	public TicketWithBLOBs getTicketById(Integer id);

	public int confirmTicketOrder(TicketOrder ticketOrder) throws RuntimeException;

	public List<Ticket> getTicketByCriteria(Ticket queryTicket, Integer pageNum, Integer pageSize);
}
