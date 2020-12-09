package com.jh.yogiyo.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StoreService {
	
	@Autowired
	private StoreMapper storeMapper;
	
	public List<StoreVO> getList(StoreVO storeVO) throws Exception{
		return storeMapper.getList(storeVO);
	}
}
