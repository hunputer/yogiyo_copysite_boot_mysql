package com.jh.yogiyo.store.detail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;

import com.jh.yogiyo.store.StoreVO;

@Controller
@RequestMapping("storeDetail/**")
public class StoreDetailController {

	@Autowired
	private StoreDetailService storeDetailService;
	
	@GetMapping("getDetail")
	public ModelAndView getStoreDetail(StoreVO storeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		storeVO = storeDetailService.getStoreManage(storeVO);
		
		mv.addObject("vo", storeVO);
		mv.setViewName("storeDetail/getDetail");
		
		return mv;
	}
	
	@GetMapping("getInfoAjax")
	public ModelAndView getInfoAjax(StoreVO storeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("------"+storeVO.getNum());
		storeVO = storeDetailService.getStoreManage(storeVO);
		
		System.out.println("넘어가는 num"+storeVO.getStoreManageVO().getStoreNum());
		mv.addObject("vo", storeVO);
		mv.setViewName("storeDetail/infoAjax");
		
		return mv;
	}
	
	@GetMapping("getMenuAjax")
	public ModelAndView getMenuAjax(StoreVO storeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<StoreMenuVO> ar = storeDetailService.getMenu(storeVO);
		
		mv.addObject("list", ar);
		mv.setViewName("storeDetail/menuAjax");
		return mv;
	}
}
