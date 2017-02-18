package com.myway.service.blog;

import java.util.List;

import com.myway.dto.CommonDto;
import com.myway.pojo.Diary;

public interface BlogService {
	void saveBlog(Diary diary) throws RuntimeException;

	List<Diary> getDiaryByCriteria(Diary diary, Integer pageNum, Integer pageSize);

	List<CommonDto> hotCity();

	List<Diary> newBlog();

	Integer getRemarkCount(Integer dId);

	Diary getDiary(int id);
}
