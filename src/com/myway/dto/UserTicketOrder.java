package com.myway.dto;

import com.myway.pojo.Ticket;
import com.myway.pojo.TicketOrder;

public class UserTicketOrder {
	Ticket ticket;
	TicketOrder ticketOrder;

	public Ticket getTicket() {
		return ticket;
	}

	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}

	public TicketOrder getTicketOrder() {
		return ticketOrder;
	}

	public void setTicketOrder(TicketOrder ticketOrder) {
		this.ticketOrder = ticketOrder;
	}

}
