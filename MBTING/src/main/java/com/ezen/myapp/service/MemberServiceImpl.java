package com.ezen.myapp.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ezen.myapp.domain.BoardVo;
import com.ezen.myapp.domain.CommentVo;
import com.ezen.myapp.domain.MemberVo;
import com.ezen.myapp.domain.SearchCriteria;
import com.ezen.myapp.persistence.BoardService_Mapper;
import com.ezen.myapp.persistence.MemberService_Mapper;

@Service("memberServiceImpl")
public class MemberServiceImpl implements MemberService  {

	@Autowired
	SqlSession sqlSession;

	@Override
	public MemberVo memberLogin(String id, String pwd) {
		
		MemberService_Mapper msm = sqlSession.getMapper(MemberService_Mapper.class);
		MemberVo mv = msm.memberLogin(id, pwd);
	
		
		return mv;
	}


	@Override
	public int memberInsert(String memberid, String memberpwd, String membername, String membernickname,
			String membergender, int memberbirth, String memberemail, int memberphone, String membermbti, String memberaddr,String aggrement,String photo, String intro) {
		HashMap<String,Object> hm = new HashMap<String,Object>();
		hm.put("memberid", memberid);
		hm.put("memberpwd", memberpwd);
		hm.put("membername", membername);
		hm.put("membernickname", membernickname);
		hm.put("membergender", membergender);
		hm.put("memberbirth", memberbirth);
		hm.put("memberemail", memberemail);
		hm.put("memberphone", memberphone);
		hm.put("membermbti", membermbti);
		hm.put("memberaddr", memberaddr);
		hm.put("aggrement", aggrement);
		hm.put("photo", photo);
		hm.put("intro", intro);
		
		
		MemberService_Mapper msm=sqlSession.getMapper(MemberService_Mapper.class);
		int result = msm.memberInsert(hm);
		return result;
	}
	
	@Override
	public int memberTotalCount(SearchCriteria scri) {
	
		int cnt = 0;
		MemberService_Mapper msm=sqlSession.getMapper(MemberService_Mapper.class);
		cnt = msm.memberTotalCount(scri);
		return cnt;
	}
	
	@Override
	public int memberTotalCount2(SearchCriteria scri, int midx) {
		HashMap<String,Object> hm = new HashMap<String,Object>();
		hm.put("scri", scri);
		hm.put("midx", midx);
		int cnt = 0;
		MemberService_Mapper msm=sqlSession.getMapper(MemberService_Mapper.class);
		cnt = msm.memberTotalCount2(hm);
		return cnt;
	}
	@Override
	public ArrayList<MemberVo> memberSelectAll(String mmt) {
		
		HashMap<String,String> hm = new HashMap<String,String>();
		hm.put("mmt", mmt);		
		
		ArrayList<MemberVo> alist = null;
		MemberService_Mapper msm =sqlSession.getMapper(MemberService_Mapper.class);	
		alist = msm.memberSelectAll(hm);
		System.out.println("membermbti:"+mmt);
		return alist;
	}
	
	@Override
	public ArrayList<MemberVo> memberSelectAll2(SearchCriteria scri, int midx) {
		System.out.println("scri="+scri);
		HashMap<String,Object> hm = new HashMap<String,Object>();
		hm.put("scri", scri);
		hm.put("midx", midx);
		ArrayList<MemberVo> alist2 = null;
		MemberService_Mapper msm =sqlSession.getMapper(MemberService_Mapper.class);	
		alist2 = msm.memberSelectAll2(hm);
		System.out.println("alist2:"+alist2.get(0).getMidx());
		return alist2;
	}

	@Override
	public MemberVo memberSelectOne(int midx) {
		MemberService_Mapper msm = sqlSession.getMapper(MemberService_Mapper.class);
		MemberVo mv = msm.memberSelectOne(midx);			

		return mv;
	}
	
	@Override
	public MemberVo memberFindId(String membername, String memberemail) {
		MemberService_Mapper msm = sqlSession.getMapper(MemberService_Mapper.class);
		MemberVo mv = msm.memberFindId(membername,memberemail);			
		System.out.println("mv" + mv);
		return mv;
	}
	
	@Override
	public MemberVo memberFindPwd(String memberid, String memberemail) {
		MemberService_Mapper msm = sqlSession.getMapper(MemberService_Mapper.class);
		MemberVo mv = msm.memberFindPwd(memberid,memberemail);			
		System.out.println("mv" + mv);
		return mv;
	}



	@Override
	public int memberProfileModify(int midx, String membername, String memberpwd, int memberphone, String memberaddr,
			String membermbti,String photo, String intro) {
		
		HashMap<String,Object> hm = new HashMap<String,Object>();
		hm.put("membername", membername);
		hm.put("memberpwd", memberpwd);
		hm.put("memberphone", memberphone);
		hm.put("memberaddr", memberaddr);
		hm.put("membermbti", membermbti);
		hm.put("photo", photo);
		hm.put("intro", intro);
		hm.put("midx", midx);
		
		MemberService_Mapper msm=sqlSession.getMapper(MemberService_Mapper.class);
		int result = msm.memberProfileModify(hm);
		
		return result;
	}

	@Override
	public int memberDrop(int midx) {
		HashMap<String,Object> hm = new HashMap<String,Object>();
		hm.put("midx", midx);
		
		
		MemberService_Mapper msm = sqlSession.getMapper(MemberService_Mapper.class);
		int value = msm.memberDrop(hm);
		
		return value;
	}
	@Override
	public int memberIdCheck(String memberid) {
		MemberService_Mapper msm=sqlSession.getMapper(MemberService_Mapper.class);
		int result = msm.memberIdCheck(memberid);
		
		return result;
	}

	@Override
	public int memberEmailCheck(String memberemail) {
		MemberService_Mapper msm=sqlSession.getMapper(MemberService_Mapper.class);
		int result = msm.memberEmailCheck(memberemail);
		return result;
	}

	@Override
	public int memberNickCheck(String membernickname) {
		MemberService_Mapper msm=sqlSession.getMapper(MemberService_Mapper.class);
		int result = msm.memberNickCheck(membernickname);
		return result;
	}

}
