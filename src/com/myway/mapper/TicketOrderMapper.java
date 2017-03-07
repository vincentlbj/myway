package com.myway.mapper;

import com.myway.pojo.TicketOrder;
import com.myway.pojo.TicketOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TicketOrderMapper {
    int countByExample(TicketOrderExample example);

    int deleteByExample(TicketOrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TicketOrder record);

    int insertSelective(TicketOrder record);

    List<TicketOrder> selectByExample(TicketOrderExample example);

    TicketOrder selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TicketOrder record, @Param("example") TicketOrderExample example);

    int updateByExample(@Param("record") TicketOrder record, @Param("example") TicketOrderExample example);

    int updateByPrimaryKeySelective(TicketOrder record);

    int updateByPrimaryKey(TicketOrder record);
}