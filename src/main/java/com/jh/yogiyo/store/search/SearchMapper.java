package com.jh.yogiyo.store.search;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jh.yogiyo.store.StoreVO;

@Mapper
public interface SearchMapper {
	
	public SearchVO getOne(SearchVO SearchVO) throws Exception;
	
	public int setInsert(SearchVO SearchVO) throws Exception;
	
	public int setUpdate(SearchVO SearchVO) throws Exception;
	
	public List<SearchVO> getList() throws Exception;
	
	public int getCount() throws Exception;
}
