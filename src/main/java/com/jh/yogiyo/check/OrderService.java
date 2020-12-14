package com.jh.yogiyo.check;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jh.yogiyo.member.MemberVO;

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
}
