package com.jh.yogiyo.store;

import lombok.Data;

@Data
public class StoreManageVO {
	private long storeNum;
	private String openTime;
	private String closeTime;
	private String holiday;
	private int minPrice;
	private int driveFee;
	private int takeTime;
	private int isOpen;
	private String storeComment;
}
