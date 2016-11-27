package com.myway.service.impl.tour;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myway.mapper.TourMapper;
import com.myway.mapper.TourPriceMapper;
import com.myway.pojo.Tour;
import com.myway.pojo.TourPrice;
import com.myway.pojo.TourPriceExample;
import com.myway.service.tour.TourService;

@Service
public class TourServiceImpl implements TourService {

	@Autowired
	private TourMapper tourMapper;

	@Autowired
	private TourPriceMapper tourPriceMapper;

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

}
