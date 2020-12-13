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
		
		double avg = storeDetailService.getStarAvg(storeVO);
		storeVO = storeDetailService.getStoreManage(storeVO);
		
		mv.addObject("avg", avg);
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
		String[] cg = storeDetailService.getMenuCategory(storeVO);
		
		mv.addObject("cg",cg);
		mv.addObject("list", ar);
		mv.setViewName("storeDetail/menuAjax");
		return mv;
	}
	
	@GetMapping("getReviewAjax")
	public ModelAndView getReviewAjax(StoreVO storeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		double avg = storeDetailService.getStarAvg(storeVO);
		long sum = storeDetailService.getSumReview(storeVO);
		List<StoreReviewVO> ar = storeDetailService.getAllReview(storeVO);
		List<ReviewAplyVO> arAply = storeDetailService.getAply(storeVO);
		
		mv.addObject("arAply", arAply);
		mv.addObject("ar", ar);
		mv.addObject("sum", sum);
		mv.addObject("avg", avg);
		mv.setViewName("storeDetail/reviewAjax");
		return mv;
	}
	
}
