package com.jh.yogiyo.check;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jh.yogiyo.member.MemberVO;
import com.jh.yogiyo.store.CartVO;

@Service
public class OrderService {
	@Autowired
	private OrderMapper orderMapper;
	
	public List<OrderListVO> getList(MemberVO memberVO) throws Exception{
		return orderMapper.getList(memberVO);
	}
	
	public OrderListVO getOne(OrderListVO orderListVO) throws Exception{
		return orderMapper.getOne(orderListVO);	
	}
	
	public List<CartVO> getList2(MemberVO memberVO) throws Exception{
		return orderMapper.getList2(memberVO);
	}
	
	public int insertOrderList(OrderListVO orderListVO) throws Exception{
		return orderMapper.insertOrderList(orderListVO);
	}
}
