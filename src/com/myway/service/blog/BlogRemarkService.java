package com.myway.service.blog;

import java.util.List;

import com.myway.pojo.DiaryRemark;

public interface BlogRemarkService {
	List<DiaryRemark> getBlogRemark(Integer dId, Integer pageNum, Integer pageSize);

	void saveBlogRemark(DiaryRemark diaryRemark) throws RuntimeException;
}
