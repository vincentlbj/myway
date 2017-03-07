package com.myway.service.impl.ticket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.myway.mapper.TicketMapper;
import com.myway.mapper.TicketOrderMapper;
import com.myway.pojo.Ticket;
import com.myway.pojo.TicketExample;
import com.myway.pojo.TicketOrder;
import com.myway.pojo.TicketOrderExample;
import com.myway.pojo.TicketWithBLOBs;
import com.myway.service.ticket.TicketService;

@Service
public class TicketServiceImpl implements TicketService {

	@Autowired
	private TicketMapper ticketMapper;

	@Autowired
	private TicketOrderMapper tickerOrderMapper;

	@Override
	public TicketWithBLOBs getTicketById(Integer id) {
		TicketWithBLOBs ticket = ticketMapper.selectByPrimaryKey(id);
		return ticket;
	}

	@Override
	public int confirmTicketOrder(TicketOrder ticketOrder) {
		// 避免重复提交表单
		TicketOrderExample ticketOrderExample = new TicketOrderExample();
		ticketOrderExample.or().andTokenEqualTo(ticketOrder.getToken());
		List<TicketOrder> existOrderList = tickerOrderMapper.selectByExample(ticketOrderExample);
		if (existOrderList.size() > 0) {
			return -1;
		}
		int o_id = tickerOrderMapper.insertSelective(ticketOrder);
		return o_id;
	}

	@Override
	public List<Ticket> getTicketByCriteria(Ticket queryTicket, Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		TicketExample ticketExample = new TicketExample();
		if (queryTicket.getName() != null)
			ticketExample.or().andNameEqualTo(queryTicket.getName());
		List<Ticket> list = ticketMapper.selectByExample(ticketExample);
		return list;
	}

}
