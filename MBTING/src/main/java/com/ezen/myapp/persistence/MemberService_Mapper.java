package com.ezen.myapp.persistence;

import java.util.ArrayList;
import java.util.HashMap;

import com.ezen.myapp.domain.BoardVo;
import com.ezen.myapp.domain.CommentVo;
import com.ezen.myapp.domain.MemberVo;
import com.ezen.myapp.domain.SearchCriteria;

public interface MemberService_Mapper {
	
	//占쏙옙占싱뱄옙티占쏙옙占쏙옙 占쏙옙占쏙옙占� 占쌨소드를 占쏙옙占쏙옙占싼댐옙
	
	public MemberVo memberLogin(String id, String pwd);
	
	public int memberInsert(HashMap<String,Object> hm);
	
	public MemberVo memberSelectOne(int midx);
	
	public MemberVo memberFindId(String membername, String memberemail);
	public MemberVo memberFindPwd(String memberid, String memberemail);
	public int memberProfileModify(HashMap<String,Object> hm);
	public int memberDrop(HashMap<String,Object> hm);
	public int memberIdCheck(String id);
	public int memberEmailCheck(String memberemail);
	public int memberNickCheck(String membernickname);	
	public int memberTotalCount(SearchCriteria scri);	
	public int memberTotalCount2(HashMap<String,Object> hm);
	public ArrayList<MemberVo> memberSelectAll(HashMap<String,String> hm);
	public ArrayList<MemberVo> memberSelectAll2(HashMap<String,Object> hm);
}
