package com.jh.yogiyo.store.detail;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.jh.yogiyo.store.StoreVO;
import com.jh.yogiyo.util.FileManager;
import com.jh.yogiyo.util.FilePathGenerator;

@Service
public class StoreDetailService {

	@Autowired
	private StoreDetailMapper storeDetailMapper;
	
	@Autowired
	private FilePathGenerator filePathGenerator;
	
	@Autowired
	private FileManager fileManager;
	
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
	
	public List<StoreReviewVO> getAllReview(StoreVO storeVO) throws Exception{
		return storeDetailMapper.getAllReview(storeVO);
	}
	
	public List<ReviewAplyVO> getAply(StoreVO storeVO) throws Exception{
	      return storeDetailMapper.getAply(storeVO);
	}
	   
	public List<ToppingVO> getTopping(StoreVO storeVO) throws Exception{
	     return storeDetailMapper.getTopping(storeVO);
	}
	
	public int setReviewInsert(StoreReviewVO storeReviewVO, MultipartFile file) throws Exception {
		File f = filePathGenerator.getUseResourceLoader("upload/review");
		int result = storeDetailMapper.setReviewInsert(storeReviewVO);
		
		if(file.getSize() != 0) {
			String fileName = fileManager.saveFileCopy(file, f);
			
			ReviewFileVO fileVO = new ReviewFileVO();
			fileVO.setFileName(fileName);
			fileVO.setOriName(file.getOriginalFilename());
			fileVO.setReviewNum(storeReviewVO.getNum());
			
			result = storeDetailMapper.setReviewFileInsert(fileVO);
		}
		return result;
	}
}
