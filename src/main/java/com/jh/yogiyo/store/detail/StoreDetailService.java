package com.jh.yogiyo.store.detail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jh.yogiyo.store.StoreVO;

@Service
public class StoreDetailService {

	@Autowired
	private StoreDetailMapper storeDetailMapper;
	
	public StoreVO getOne(StoreVO storeVO) throws Exception{
		return storeDetailMapper.getOne(storeVO);
	}
}
