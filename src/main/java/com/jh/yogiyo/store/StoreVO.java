package com.jh.yogiyo.store;

import java.sql.SQLTransactionRollbackException;
import java.util.List;

import com.jh.yogiyo.store.detail.StoreThumbFileVO;

import lombok.Data;

@Data
public class StoreVO {
	private long num;
	private long categoryNum;
	private String storeName;
	private String storeNumber;
	private String tel;
	private String address;
	private String zipCode;
	private String id;
	
	private StoreManageVO storeManageVO;
	private StoreThumbFileVO storeThumbFileVO;
	
}
