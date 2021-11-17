package com.ezen.myapp.domain;


public class SearchCriteria extends Criteria {

	private String keyword ="";
	private String searchType ="";
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	
	
}
