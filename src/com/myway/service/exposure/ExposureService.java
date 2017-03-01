package com.myway.service.exposure;

import java.util.List;

import com.myway.pojo.Exposure;

public interface ExposureService {
	List<Exposure> getExposure(Integer pageNum, Integer pageSize);

	Exposure getExposureById(Integer id);
}
