package com.jh.yogiyo.member;

import lombok.Data;

@Data
public class MemberVO {
	public String id;
	public String pw;
	public String name;
	public String phone;
	public String address;
	public String zipCode;
	public String memberCode;
	public long point;
	public String memberLevel;
}
