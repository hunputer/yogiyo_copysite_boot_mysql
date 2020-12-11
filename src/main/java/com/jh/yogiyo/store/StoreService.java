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
	
	public List<StoreVO> getList(StorePager storePager) throws Exception{
		storePager.makeRow();
		if(storePager.getCurPage()==1 && !storePager.getSearchName().equals("") && storePager.getSearchName() != null) {
			SearchVO vo = searchMapper.getOne(storePager);
			int result = 0;
			if(vo != null) {
				result = searchMapper.setUpdate(vo);
			}else {
				result = searchMapper.setInsert(storePager);
			}
		}
		return storeMapper.getList(storePager);
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
