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
	
	public double getStarAvg(StoreVO storeVO) throws Exception{
		List<StoreReviewVO> ar = storeDetailMapper.getStarAvg(storeVO);
		int sum = 0;
		double avg = 0;
		double n = ar.size();
		
		for(int i=0; i<ar.size(); i++){
			StoreReviewVO vo = new StoreReviewVO();
			sum += ar.get(i).getStarCount();
		}
		if(sum != 0) {
			avg = sum/n;
			avg = Double.parseDouble(String.format("%.1f", avg));
		}
		
		return avg;
	}
	
	public Long getSumReview(StoreVO storeVO) throws Exception{
		return storeDetailMapper.getSumReview(storeVO);
	}
}
