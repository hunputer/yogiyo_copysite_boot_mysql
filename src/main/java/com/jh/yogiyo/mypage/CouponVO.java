package com.jh.yogiyo.mypage;

import lombok.Data;

@Data
public class CouponVO {
	private long couponNum;
	private String id;
	private String name;
	private long price;
	private String isUse;
	private String fileName;
}
