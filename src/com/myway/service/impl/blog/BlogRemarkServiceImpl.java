package com.myway.service.impl.blog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.myway.mapper.DiaryRemarkMapper;
import com.myway.pojo.DiaryRemark;
import com.myway.pojo.DiaryRemarkExample;
import com.myway.service.blog.BlogRemarkService;
import com.myway.util.sensetiveword.SensitivewordFilter;

@Service
public class BlogRemarkServiceImpl implements BlogRemarkService {

	@Autowired
	private DiaryRemarkMapper diaryRemarkMapper;

	@Override
	public List<DiaryRemark> getBlogRemark(Integer dId, Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		DiaryRemarkExample example = new DiaryRemarkExample();
		example.setOrderByClause("create_date desc");
		example.or().andDIdEqualTo(dId);
		List<DiaryRemark> list = diaryRemarkMapper.selectByExample(example);
		return list;
	}

	@Override
	public void saveBlogRemark(DiaryRemark diaryRemark) {
		// 过滤垃圾评论词
		SensitivewordFilter filter = new SensitivewordFilter();
		diaryRemark.setContent(filter.replaceSensitiveWord(diaryRemark.getContent(), 1, "*"));
		diaryRemarkMapper.insert(diaryRemark);
	}

}
