package com.jh.yogiyo.store;

import lombok.Data;

@Data
public class StorePager {
	private long curPage;
	private long perPage; // 한페이지에 보여줄 글의 갯수
	
	private long startRow;
	private long totalPage;
	
	private long startNum;
	
	private String address;
	private String searchName;
	private long categoryNum;
	
	public StorePager() {
		this.perPage = 20;
	}
	
	public void setCurPage(long curPage) {
		if(curPage == 0) {
			this.curPage=1;
		}else {
			this.curPage=curPage;
		}
	}
	
	public long getCurPage() {
		if(this.curPage==0) {
			this.curPage=1;
		}
		return this.curPage;
	}
	
	public void makeRow() {
		startRow = ((this.getCurPage()-1) * perPage);
	}
}
