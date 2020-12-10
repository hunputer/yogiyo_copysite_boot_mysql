package com.jh.yogiyo.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jh.yogiyo.store.search.SearchMapper;
import com.jh.yogiyo.store.search.SearchVO;

@Service
public class StoreService {
	
	@Autowired
	private StoreMapper storeMapper;
	
	@Autowired
	private SearchMapper searchMapper;
	
	public List<StoreVO> getList(StoreVO storeVO) throws Exception{
		return storeMapper.getList(storeVO);
	}
	
	public List<StoreVO> getList2(SearchVO searchVO) throws Exception{
		SearchVO vo = searchMapper.getOne(searchVO);
		int result = 0;
		if(vo != null) {
			result = searchMapper.setUpdate(vo);
		}else {
			result = searchMapper.setInsert(searchVO);
		}
		return storeMapper.getList2(searchVO);
	} 
	
	public List<SearchVO> getSearch() throws Exception{
		List<SearchVO> ar = searchMapper.getList();
		int count = searchMapper.getCount();
		for(int i = count+1; i <=10; i++) {
			SearchVO searchVO = new SearchVO();
			searchVO.setSearchName("-");
			ar.add(searchVO);
		}
		return ar;
	}
}
