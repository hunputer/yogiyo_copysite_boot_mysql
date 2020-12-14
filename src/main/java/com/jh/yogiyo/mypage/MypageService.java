package com.jh.yogiyo.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jh.yogiyo.member.MemberMapper;
import com.jh.yogiyo.member.MemberVO;
import com.jh.yogiyo.store.detail.StoreReviewVO;

@Service
public class MypageService {
	
	@Autowired
	private MemberMapper memberMapper;
	
	public int setUpdate(MemberVO memberVO, HttpSession session) throws Exception{
		MemberVO member = (MemberVO)session.getAttribute("member");
		member.setName(memberVO.getName());
		member.setAddress(memberVO.getAddress());
		member.setPhone(memberVO.getPhone());
		return memberMapper.setUpdate(member);
	}
	
	public List<StoreReviewVO> getReviewList(MemberVO memberVO) throws Exception{
		return memberMapper.getReviewList(memberVO);
	}
	
	public int setReviewDelete(StoreReviewVO storeReviewVO) throws Exception{
		return memberMapper.setReviewDelete(storeReviewVO);
	}
	
	
}
