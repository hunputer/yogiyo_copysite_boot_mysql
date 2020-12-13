package com.jh.yogiyo.check;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jh.yogiyo.member.MemberVO;

@Mapper
public interface OrderMapper {
	
	public List<OrderListVO> getList(MemberVO memberVO) throws Exception;
}
