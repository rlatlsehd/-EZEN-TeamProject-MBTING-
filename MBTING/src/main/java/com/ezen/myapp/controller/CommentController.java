package com.ezen.myapp.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ezen.myapp.domain.CommentVo;
import com.ezen.myapp.service.BoardService;

@RestController
public class CommentController {

	@Autowired
	BoardService bs;
	
	@RequestMapping(value="/board/commentsAll.do")
	
	public ArrayList<CommentVo> commentAll(@RequestParam("bidx") int bidx) {
		
		
		ArrayList<CommentVo> clist = null;
		clist = bs.commentSelectAll(bidx);
		
		
		return clist;
	}
	
	
	@RequestMapping(value="/board/comments.do")
	public HashMap<String,Integer> commentWrite(CommentVo cv) {
		int value= 0;
		
		value = bs.commentInsert(cv);
		
		HashMap<String,Integer> hm = new HashMap<String,Integer>();
		hm.put("result", value);
		
		return hm;
	}
	
	  // 리턴값으로 객체를 가진다
	@RequestMapping(value="/board/{cidx}/commentDelete.do")
	public HashMap<String,Integer> commentDelete(
			@PathVariable("cidx") int cidx,
			@PathVariable("cidx") int midx
			) {
		int value=0;	
		System.out.println("cidx:"+cidx);
						
		value = bs.commentDel(cidx);		
		
		//해시맵을 사용해서 객체를 반환 
		HashMap<String,Integer> hm = new HashMap<String,Integer>();
		hm.put("result", value);
		
		return hm;
	}
	
	
	@RequestMapping(value="/board/{bidx}/{page}/commentMore.do")
	public HashMap<String,Object> commentMore(@PathVariable("bidx") int bidx, @PathVariable("page") int page){
		int nextpage = 0;
		ArrayList<CommentVo> clist = null;
		
		int commentTotalPage = bs.commentTotalPage(bidx);
		if (page < commentTotalPage) {
	        nextpage = page+1;
	    }else {
	        nextpage = 9999;
	    }	     
		clist = bs.commentMo(bidx, page);
				
		HashMap<String,Object> hm = new HashMap<String,Object>();
        hm.put("nextpage", nextpage);
        hm.put("ja", clist);
        System.out.println(clist.get(0).getMembernickname());
		
        return hm;
	}	
	
	
}
