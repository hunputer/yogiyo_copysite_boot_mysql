package com.jh.yogiyo.store;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StoreMapper {
	
	public List<StoreVO> getList(StoreVO storeVO) throws Exception;
	
}
