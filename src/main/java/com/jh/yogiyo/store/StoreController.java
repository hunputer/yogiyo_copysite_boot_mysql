package com.jh.yogiyo.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jh.yogiyo.store.detail.StoreDetailService;
import com.jh.yogiyo.store.search.SearchVO;

@Controller
@RequestMapping("/store/**")
public class StoreController {
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private StoreDetailService storeDetailService; 
	
	@GetMapping("storeList")
	public ModelAndView getList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("store/storeList");
		return mv;
	}
	
	@PostMapping("storeList")
	public ModelAndView getList(StorePager storePager) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(storePager.getCurPage() == 0) {
			storePager.setCurPage(1);
		}
		System.out.println(storePager.getAddress());
		System.out.println(storePager.getCategoryNum());
		System.out.println(storePager.getCurPage());
		List<StoreVO> ar = storeService.getList(storePager);
		for(StoreVO vo : ar) {
			double avg = storeDetailService.getStarAvg(vo);
			vo.setStarAvg(avg);
		}
		mv.addObject("list", ar);
		mv.setViewName("store/storePager");
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
