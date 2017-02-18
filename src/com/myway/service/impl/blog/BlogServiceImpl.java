package com.myway.service.impl.blog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.myway.dto.CommonDto;
import com.myway.mapper.DiaryMapper;
import com.myway.mapper.my.myDiaryMapper;
import com.myway.pojo.Diary;
import com.myway.pojo.DiaryExample;
import com.myway.pojo.DiaryExample.Criteria;
import com.myway.service.blog.BlogService;

@Service
public class BlogServiceImpl implements BlogService {

	@Autowired
	private DiaryMapper diaryMapper;

	@Autowired
	private myDiaryMapper myDiaryMapper;

	@Override
	public void saveBlog(Diary diary) {
		diaryMapper.insert(diary);
	}

	@Override
	public List<Diary> getDiaryByCriteria(Diary diary, Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		DiaryExample diaryExample = new DiaryExample();
		diaryExample.setOrderByClause("create_date desc");
		Criteria or = diaryExample.or();
		if (diary.getPlace() != null) {
			or.andPlaceEqualTo(diary.getPlace());
		}
		if (diary.getTitle() != null) {
			or.andTitleLike("%" + diary.getTitle() + "%");
		}
		List<Diary> list = diaryMapper.selectByExample(diaryExample);
		return list;
	}

	@Override
	public List<CommonDto> hotCity() {
		return myDiaryMapper.hotCity();
	}

	@Override
	public List<Diary> newBlog() {
		return myDiaryMapper.newBlog();
	}

	@Override
	public Diary getDiary(int id) {
		return diaryMapper.selectByPrimaryKey(id);
	}

	@Override
	public Integer getRemarkCount(Integer dId) {
		return myDiaryMapper.getRemarkCount(dId);
	}

}
