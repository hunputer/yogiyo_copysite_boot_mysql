package com.jh.yogiyo.store.detail;

import java.util.List;

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
	
	public StoreVO getStoreManage(StoreVO storeVO) throws Exception{
		return storeDetailMapper.getStoreManage(storeVO);
	}
	
	public List<StoreMenuVO> getMenu(StoreVO storeVO) throws Exception{
		return storeDetailMapper.getMenu(storeVO);
	}
	
	public String[] getMenuCategory(StoreVO storeVO) throws Exception{
		return storeDetailMapper.getMenuCategory(storeVO);
	}
}
