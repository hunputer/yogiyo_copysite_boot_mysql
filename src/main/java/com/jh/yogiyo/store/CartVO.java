package com.jh.yogiyo.store;

import lombok.Data;

@Data
public class CartVO {

	private long cartNum;

	private long storeNum;

	private String id;
	private String menuName;
	private long count;
	private long price;
	
	private StoreVO storeVO;
}
