package com.jh.yogiyo.check;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jh.yogiyo.member.MemberMapper;
import com.jh.yogiyo.member.MemberVO;
import com.jh.yogiyo.mypage.CouponVO;
import com.jh.yogiyo.store.CartVO;

@Service
public class OrderService {
	@Autowired
	private OrderMapper orderMapper;
	
	@Autowired
	private MemberMapper memberMapper;
	
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
	
	public int setPoint(MemberVO memberVO) throws Exception{
		return orderMapper.setPoint(memberVO);
	}
	
	public int getPoint(MemberVO memberVO) throws Exception{
		return orderMapper.getPoint(memberVO);
	}
	
	public List<CouponVO> getCouponList(MemberVO memberVO) throws Exception{
		return memberMapper.getCouponList(memberVO);
	}
	
	public CouponVO getCoupon(CouponVO couponVO) throws Exception{
		return orderMapper.getCoupon(couponVO);
	}
	
	public int setUsePoint(MemberVO memberVO) throws Exception{
		return orderMapper.setUsePoint(memberVO);
	}
	
	public int setUseCoupon(CouponVO couponVO) throws Exception{
		return orderMapper.setUseCoupon(couponVO);
	}
}
