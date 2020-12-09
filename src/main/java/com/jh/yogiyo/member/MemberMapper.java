package com.jh.yogiyo.member;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;

@Mapper
public interface MemberMapper {
	
	public int setInsert(MemberVO memberVO) throws Exception;
	
	public MemberVO getOne(MemberVO memberVO) throws Exception;
	
	public MemberVO getIdCheck(MemberVO memberVO) throws Exception;
}
