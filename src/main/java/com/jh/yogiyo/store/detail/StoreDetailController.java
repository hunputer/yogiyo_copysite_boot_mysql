package com.jh.yogiyo.store.detail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jh.yogiyo.store.StoreVO;

@Controller
@RequestMapping("storeDetail/**")
public class StoreDetailController {

	@Autowired
	private StoreDetailService storeDetailService;
	
	@GetMapping("getDetail")
	public ModelAndView getStoreDetail(StoreVO storeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		storeVO = storeDetailService.getOne(storeVO);
		
		mv.addObject("vo", storeVO);
		mv.setViewName("storeDetail/getDetail");
		
		return mv;
	}
}
