package com.jh.yogiyo.store.search;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jh.yogiyo.store.StorePager;
import com.jh.yogiyo.store.StoreVO;

@Mapper
public interface SearchMapper {
	
	public SearchVO getOne(StorePager storePager) throws Exception;
	
	public int setInsert(StorePager storePager) throws Exception;
	
	public int setUpdate(SearchVO SearchVO) throws Exception;
	
	public List<SearchVO> getList() throws Exception;
	
	public int getCount() throws Exception;
}
