package com.myway.mapper.my;

import java.util.List;

import com.myway.dto.CommonDto;
import com.myway.pojo.Diary;

public interface myDiaryMapper {
	List<CommonDto> hotCity();

	List<Diary> newBlog();

	Integer getRemarkCount(Integer dId);
}
