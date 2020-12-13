package com.jh.yogiyo.check;

import lombok.Data;

@Data
public class OrderListVO {

	private long num;
	private long storeNum;
	private String id;
	private long totalPrice;
	private String orderContents;
	private long address;
}
