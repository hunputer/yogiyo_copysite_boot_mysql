package com.jh.yogiyo.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	public MemberMapper memberMapper;
	
	public int setInsert(MemberVO memberVO) throws Exception{
		memberVO.setZipCode("31234");
		return memberMapper.setInsert(memberVO);
	}
	
	public MemberVO getOne(MemberVO memberVO) throws Exception{
		return memberMapper.getOne(memberVO);
	}
	
	public MemberVO getIdCheck(MemberVO memberVO) throws Exception{
		return memberMapper.getIdCheck(memberVO);
	}
}
