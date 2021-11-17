package com.ezen.myapp.persistence;

import java.util.ArrayList;
import java.util.HashMap;

import com.ezen.myapp.domain.BoardVo;
import com.ezen.myapp.domain.CommentVo;
import com.ezen.myapp.domain.SearchCriteria;

public interface BoardService_Mapper {
	
	//마이바티스의 사용할 메소드를 정의한다
	
	public int boardInsert(HashMap<String,Object> hm);

	public int boardTotalCount(SearchCriteria scri);
	
	public int boardTotalCount2(HashMap<String,Object> hm);
	
	public ArrayList<BoardVo> boardSelectAll(SearchCriteria scri);
	
	public ArrayList<BoardVo> boardSelectAll2(HashMap<String,Object> hm);

	public BoardVo boardSelectOne(int bidx);

	public ArrayList<CommentVo> commentSelectAll(int bidx);

	public int commentInsert(CommentVo cv);
	
	public int commentDel(int cidx);
	
	public ArrayList<CommentVo> commentMo(HashMap<String,Integer> hm);

	public int commentTotalPage(int bidx);
	
	public int boardModify(HashMap<String,Object> hm);
	
	public int boardDelete(HashMap<String,Object> hm);


	



}
