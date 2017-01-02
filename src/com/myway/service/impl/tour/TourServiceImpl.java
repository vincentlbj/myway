package com.myway.service.impl.tour;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myway.mapper.TourMapper;
import com.myway.mapper.TourMemberMapper;
import com.myway.mapper.TourOrderMapper;
import com.myway.mapper.TourPriceMapper;
import com.myway.pojo.Tour;
import com.myway.pojo.TourMember;
import com.myway.pojo.TourOrder;
import com.myway.pojo.TourOrderExample;
import com.myway.pojo.TourPrice;
import com.myway.pojo.TourPriceExample;
import com.myway.service.tour.TourService;

@Service
public class TourServiceImpl implements TourService {

	@Autowired
	private TourMapper tourMapper;

	@Autowired
	private TourPriceMapper tourPriceMapper;

	@Autowired
	private TourMemberMapper tourMemberMapper;

	@Autowired
	private TourOrderMapper tourOrderMapper;

	@Override
	public Tour getTourById(int id) {
		Tour tour = tourMapper.selectByPrimaryKey(id);
		return tour;
	}

	@Override
	public List<TourPrice> getTourPriceByTourId(int id) {
		TourPriceExample example = new TourPriceExample();
		example.or().andTIdEqualTo(id);
		List<TourPrice> list = tourPriceMapper.selectByExample(example);
		return list;
	}

	@Override
	public TourPrice getTourPriceByPriceId(int id) {
		TourPrice tourPrice = tourPriceMapper.selectByPrimaryKey(id);
		return tourPrice;
	}

	@Override
	public int confirmTourOrder(String token, TourOrder tourOrder, TourMember tourMember) {
		// 避免重复提交表单
		TourOrderExample tourOrderExample = new TourOrderExample();
		tourOrderExample.or().andTokenEqualTo(token);
		List<TourOrder> existOrderList = tourOrderMapper.selectByExample(tourOrderExample);
		if (existOrderList.size() > 0) {
			return -1;
		}
		// 插入旅行联系信息
		tourMemberMapper.insertSelective(tourMember);
		// 插入旅行订单信息
		int o_id = tourOrderMapper.insertSelective(tourOrder);
		// 更新旅行价格信息
		TourPrice tourPrice = tourPriceMapper.selectByPrimaryKey(tourMember.getpId());
		// 余量减1
		tourPrice.setRemain(tourPrice.getRemain() - tourMember.getNumber());
		TourPriceExample tourPriceExample = new TourPriceExample();
		tourPriceExample.or().andIdEqualTo(tourPrice.getId());
		tourPriceMapper.updateByExampleSelective(tourPrice, tourPriceExample);
		return o_id;
	}

}
