package com.jh.yogiyo.store;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jh.yogiyo.store.search.SearchVO;

@Mapper
public interface StoreMapper {
	
	public List<StoreVO> getList(StoreVO storeVO) throws Exception;
	
	public List<StoreVO> getList2(SearchVO searchVO) throws Exception;
}
