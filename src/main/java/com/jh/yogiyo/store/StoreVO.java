package com.jh.yogiyo.store;

import java.util.List;

import lombok.Data;

@Data
public class StoreVO {
	private long num;
	private long categoryNum;
	private String storeName;
	private String storeNum;
	private String tel;
	private String address;
	private String zipCode;
	private String id;
	private List<StoreManageVO> storeManage;
}
