package com.myway.service.impl.mockpay;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myway.mapper.HotelOrderMapper;
import com.myway.mapper.MockPayMapper;
import com.myway.mapper.TicketOrderMapper;
import com.myway.mapper.TourOrderMapper;
import com.myway.pojo.HotelOrder;
import com.myway.pojo.MockPay;
import com.myway.pojo.MockPayExample;
import com.myway.pojo.TicketOrder;
import com.myway.pojo.TourOrder;
import com.myway.service.mockpay.MockPayService;

@Service
public class MockPayServiceImpl implements MockPayService {
	@Autowired
	private MockPayMapper mockPayMapper;

	@Autowired
	private TourOrderMapper tourOrderMapper;

	@Autowired
	private HotelOrderMapper hotelOrderMapper;

	@Autowired
	private TicketOrderMapper ticketOrderMapper;

	@Override
	public MockPay getMockPay(String account, String password) {
		MockPayExample example = new MockPayExample();
		example.or().andAccountEqualTo(account).andPasswordEqualTo(password);
		List<MockPay> mockPayList = mockPayMapper.selectByExample(example);
		if (mockPayList.size() == 0) {
			return null;
		}
		return mockPayList.get(0);
	}

	@Override
	public boolean minusBalance(MockPay mockPay, BigDecimal money) {

		if (mockPay.getBalance().compareTo(money) == 1 || mockPay.getBalance().compareTo(money) == 0) {
			mockPay.setBalance(mockPay.getBalance().subtract(money));
			mockPayMapper.updateByPrimaryKey(mockPay);
			return true;
		} else {
			return false;
		}
	}

	@Override
	public void changeOrderStatus(String type, int id) {
		if (type.equals("tour")) {
			TourOrder tourOrder = tourOrderMapper.selectByPrimaryKey(id);
			tourOrder.setoType("success");
			tourOrderMapper.updateByPrimaryKey(tourOrder);
		}
		if (type.equals("hotel")) {
			HotelOrder hotelOrder = hotelOrderMapper.selectByPrimaryKey(id);
			hotelOrder.setoType("success");
			hotelOrderMapper.updateByPrimaryKey(hotelOrder);
		}
		if (type.equals("ticket")) {
			TicketOrder ticketOrder = ticketOrderMapper.selectByPrimaryKey(id);
			ticketOrder.setoType("success");
			ticketOrderMapper.updateByPrimaryKey(ticketOrder);
		}
	}

}
