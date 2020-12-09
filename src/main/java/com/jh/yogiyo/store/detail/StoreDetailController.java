package com.jh.yogiyo.store.detail;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("storeDetail/**")
public class StoreDetailController {

	@GetMapping("getDetail")
	public ModelAndView getStoreDetail() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("storeDetail/getDetail");
		
		return mv;
	}
}
