package com.myway.mapper;

import com.myway.pojo.Diary;
import com.myway.pojo.DiaryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DiaryMapper {
    int countByExample(DiaryExample example);

    int deleteByExample(DiaryExample example);

    int deleteByPrimaryKey(Integer dId);

    int insert(Diary record);

    int insertSelective(Diary record);

    List<Diary> selectByExampleWithBLOBs(DiaryExample example);

    List<Diary> selectByExample(DiaryExample example);

    Diary selectByPrimaryKey(Integer dId);

    int updateByExampleSelective(@Param("record") Diary record, @Param("example") DiaryExample example);

    int updateByExampleWithBLOBs(@Param("record") Diary record, @Param("example") DiaryExample example);

    int updateByExample(@Param("record") Diary record, @Param("example") DiaryExample example);

    int updateByPrimaryKeySelective(Diary record);

    int updateByPrimaryKeyWithBLOBs(Diary record);

    int updateByPrimaryKey(Diary record);
}