package com.jh.yogiyo.store;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/store/**")
public class StoreController {
	
	@GetMapping("storeList")
	public ModelAndView getList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("store/storeList");
		return mv;
	}
	
}
