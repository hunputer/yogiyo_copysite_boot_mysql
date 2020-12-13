package com.jh.yogiyo.check;

import java.sql.Date;

import com.jh.yogiyo.store.StoreVO;

import lombok.Data;

@Data
public class OrderListVO {

	private long num;
	private long storeNum;
	private String id;
	private long totalPrice;
	private String orderContents;
	private String address;
	private Date regDate;
	private StoreVO storeVO;
	
}
