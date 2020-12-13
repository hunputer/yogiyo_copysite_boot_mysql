package com.jh.yogiyo.store.detail;

import lombok.Data;

@Data
public class StoreMenuVO {

	private long num;
	private String menuCategory;
	private String menuName;
	private long menuPrice;
	private int isSell;
	private String description;
	
	private StoreMenuFileVO storeMenuFileVO;
}
