package com.jh.yogiyo.store.detail;

import java.sql.Date;

import com.jh.yogiyo.check.OrderListVO;

import lombok.Data;

@Data
public class StoreReviewVO {

	private long num;
	private long storeNum;
	private long orderNum;
	private String id;
	private Date regDate;
	private String contents;
	private int starCount;
	
	private ReviewFileVO reviewFileVO;
	private OrderListVO orderListVO;
}
