package com.myway.service.mockpay;

import java.math.BigDecimal;

import com.myway.pojo.MockPay;

public interface MockPayService {
	MockPay getMockPay(String account, String password);

	boolean minusBalance(MockPay mockPay, BigDecimal money);

	void changeOrderStatus(String type, int id);
}
