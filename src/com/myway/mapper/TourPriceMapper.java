package com.myway.mapper;

import com.myway.pojo.TourPrice;
import com.myway.pojo.TourPriceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TourPriceMapper {
    int countByExample(TourPriceExample example);

    int deleteByExample(TourPriceExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TourPrice record);

    int insertSelective(TourPrice record);

    List<TourPrice> selectByExample(TourPriceExample example);

    TourPrice selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TourPrice record, @Param("example") TourPriceExample example);

    int updateByExample(@Param("record") TourPrice record, @Param("example") TourPriceExample example);

    int updateByPrimaryKeySelective(TourPrice record);

    int updateByPrimaryKey(TourPrice record);
}