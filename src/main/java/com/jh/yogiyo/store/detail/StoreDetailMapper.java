package com.jh.yogiyo.store.detail;

import org.apache.ibatis.annotations.Mapper;

import com.jh.yogiyo.store.StoreVO;

@Mapper
public interface StoreDetailMapper {

	public StoreVO getOne(StoreVO storeVO) throws Exception;
	
	public StoreVO getStoreManage(StoreVO storeVO) throws Exception;
}
