package com.ezen.myapp.domain;


import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.stereotype.Component;

@Component
public class PageMaker {
	
	private int totalCount;
	private int startPage;
	private int endPage;
	private int displayPageNum = 10; //   페이지개수 <- 1 2 3 4 5 6 7 8 9 10 ->
	private boolean prev;
	private boolean next;
	private SearchCriteria scri;
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}	
	
	public SearchCriteria getScri() {
		return scri;
	}
	public void setScri(SearchCriteria scri) {
		this.scri = scri;
	}
	public void calcData() {
		//startpage   값과  endPage 값을 정의
		// 이전버튼 다음이 나올지 말지를 정의
		
		endPage =  (int)(Math.ceil(scri.getPage()/(double)displayPageNum) * displayPageNum);
		
		startPage = (endPage- displayPageNum)+1;
		
		int tempEndPage =(int) Math.ceil(totalCount/(double)scri.getPerPageNum()); 
		
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}	
		
		prev  = startPage ==1 ? false : true;
		next  = endPage * scri.getPerPageNum()  >= totalCount ? false : true;
				
	}	
	
	public String encoding(String keyword) {
		String keyword2 = null;		
		if (keyword ==null || keyword.trim().length() ==0) {
			keyword2 = "";
		}		
		try {
			keyword2= URLEncoder.encode(keyword, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			keyword2 = "";
		}		
		return keyword2;	
	}

}
