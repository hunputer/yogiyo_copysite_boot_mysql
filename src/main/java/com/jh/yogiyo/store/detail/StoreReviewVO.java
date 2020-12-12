package com.jh.yogiyo.store.detail;

import java.sql.Date;

import lombok.Data;

@Data
public class StoreReviewVO {

	private long num;
	private long storeNum;
	private String id;
	private Date regDate;
	private String contents;
	private int starCount;
}
