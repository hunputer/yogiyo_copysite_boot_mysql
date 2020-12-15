package com.jh.yogiyo.check;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jh.yogiyo.member.MemberVO;
import com.jh.yogiyo.store.CartVO;

@Mapper
public interface OrderMapper {
	
	public List<OrderListVO> getList(MemberVO memberVO) throws Exception;
	
	public OrderListVO getOne(OrderListVO orderListVO) throws Exception;
	
	public List<CartVO> getList2(MemberVO memberVO) throws Exception;
	
	public int insertOrderList(OrderListVO orderListVO) throws Exception;
}
