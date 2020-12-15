package com.jh.yogiyo.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.jh.yogiyo.mypage.CouponVO;
import com.jh.yogiyo.store.detail.StoreReviewVO;

@Mapper
public interface MemberMapper {
	
	public int setInsert(MemberVO memberVO) throws Exception;
	
	public MemberVO getOne(MemberVO memberVO) throws Exception;
	
	public MemberVO getIdCheck(MemberVO memberVO) throws Exception;
	
	public int setUpdate(MemberVO memberVO) throws Exception;
	
	public List<StoreReviewVO> getReviewList(MemberVO memberVO) throws Exception;
	
	public int setReviewDelete(StoreReviewVO storeReviewVO) throws Exception;
	
	public List<CouponVO> getCouponList(MemberVO memberVO) throws Exception;
	
	public int setJoinCoupon(MemberVO memberVO) throws Exception;
}
