package com.jh.yogiyo.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jh.yogiyo.store.search.SearchVO;

@Controller
@RequestMapping("/store/**")
public class StoreController {
	
	@Autowired
	private StoreService storeService;
	
	@GetMapping("storeList")
	public ModelAndView getList(StoreVO storeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<StoreVO> ar = storeService.getList(storeVO);
		mv.addObject("list", ar);
		mv.setViewName("store/storeList");
		return mv;
	}
	
	@GetMapping("storeList2")
	public ModelAndView getList2(SearchVO searchVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<StoreVO> ar = storeService.getList2(searchVO);
		mv.addObject("list", ar);
		mv.setViewName("store/storeList");
		return mv;
	}
	
	@GetMapping("searchList")
	public ModelAndView searchList() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<SearchVO> ar = storeService.getSearch();
		mv.addObject("list", ar);
		mv.setViewName("store/searchList");
		return mv;
	}
}
