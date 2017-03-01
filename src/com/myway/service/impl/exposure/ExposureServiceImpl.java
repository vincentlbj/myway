package com.myway.service.impl.exposure;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.myway.mapper.ExposureMapper;
import com.myway.pojo.Exposure;
import com.myway.pojo.ExposureExample;
import com.myway.service.exposure.ExposureService;

@Service
public class ExposureServiceImpl implements ExposureService {
	@Autowired
	private ExposureMapper exposureMapper;

	@Override
	public List<Exposure> getExposure(Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		ExposureExample exposureExample = new ExposureExample();
		exposureExample.setOrderByClause("date desc");
		List<Exposure> exposureList = exposureMapper.selectByExample(exposureExample);
		return exposureList;
	}

	@Override
	public Exposure getExposureById(Integer id) {
		Exposure exposure = exposureMapper.selectByPrimaryKey(id);
		return exposure;
	}

}
