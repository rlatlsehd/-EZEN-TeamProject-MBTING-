package com.ezen.myapp.service;

import java.util.ArrayList;

import com.ezen.myapp.domain.BoardVo;
import com.ezen.myapp.domain.CommentVo;
import com.ezen.myapp.domain.MemberVo;
import com.ezen.myapp.domain.SearchCriteria;

public interface MemberService {
		
	public MemberVo memberLogin(String id, String pwd);
	public int memberInsert(String memberid, String memberpwd, String membername, String membernickname, String membergender, int memberbirth, String memberemail, int memberphone, String membermbti, String memberaddr,String aggrement, String photo, String intro);	
	public MemberVo memberSelectOne(int midx);
	
	public MemberVo memberFindId(String membername, String memberemail);
	
	public MemberVo memberFindPwd(String memberid, String memberemail);
	
	public int memberProfileModify(int midx, String membername, String memberpwd, int memberphone, String memberaddr, String membermbti, String photo, String intro);
	
	public int memberDrop(int midx);
	
	public int memberIdCheck(String memberid);
	
	public int memberEmailCheck(String memberemail);
	
	public int memberNickCheck(String membernickname);
	
	public int memberTotalCount(SearchCriteria scri);	
	
	public int memberTotalCount2(SearchCriteria scri, int midx);
	
	public ArrayList<MemberVo> memberSelectAll(String mmt);	
	
	public ArrayList<MemberVo> memberSelectAll2(SearchCriteria scri, int midx);
}
