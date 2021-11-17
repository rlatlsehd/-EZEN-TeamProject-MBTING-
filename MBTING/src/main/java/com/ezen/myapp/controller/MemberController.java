package com.ezen.myapp.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ezen.myapp.domain.BoardVo;
import com.ezen.myapp.domain.MemberVo;
import com.ezen.myapp.domain.PageMaker;
import com.ezen.myapp.domain.SearchCriteria;
import com.ezen.myapp.service.BoardService;
import com.ezen.myapp.service.MemberService;
import com.ezen.myapp.util.MediaUtils;
import com.ezen.myapp.util.UploadFileUtiles;

@Controller
public class MemberController {
	
	@Autowired
	MemberService ms;
	
	@Autowired
	BoardService bs;
	
	@Autowired
	PageMaker pm;
	
	@Resource(name = "uploadPath2")
	private String uploadPath;

	
	//占싸깍옙占쏙옙
	@RequestMapping(value="/memberLogin.do")
	public String memberLogin() {				
		
		return "memberLogin";
	}
	
	
	@RequestMapping(value="/member/memberLoginAction.do")
	public String memberLoginAction(
			@RequestParam("memberid") String memberid,
			@RequestParam("memberpwd") String memberpwd,
		 HttpServletRequest request, RedirectAttributes rttr) {
		
		MemberVo mv = ms.memberLogin(memberid, memberpwd);
		System.out.println("mv:"+mv);
				
		String path =null;
		
		
		if (mv == null) {
			rttr.addFlashAttribute("msg", "로그인정보가 맞지않습니다.");
			path = "redirect:/memberLogin.do";
			
		}else{
			//model.addAttribute("memberid", mv.getMemberid());
			rttr.addAttribute("memberid", mv.getMemberid());
			HttpSession session = request.getSession();
			session.setAttribute("memberid", mv.getMemberid());
			session.setAttribute("midx", mv.getMidx());
			session.setAttribute("membernickname", mv.getMembernickname());
			session.setAttribute("membermbti", mv.getMembermbti());
			
			path ="redirect:/index2.do";
		}
		
		return path;
	}
	//회占쏙옙占쏙옙占쏙옙
	@RequestMapping(value="/memberJoin.do")
	public String memberJoin() {				
		
		return "memberJoin";
	}
	
	//회원가입
			@RequestMapping(value="/member/memberJoinAction.do",method=RequestMethod.POST,produces="text/plain;charset=UTF-8")
			public String memberJoinAction(HttpServletRequest request,
					 @RequestParam("memberid") String memberid,
					 @RequestParam("memberpwd") String memberpwd,
					  @RequestParam("membername") String membername,
					  @RequestParam("membernickname") String membernickname,
					  @RequestParam("membergender") String membergender,
					  @RequestParam("memberbirth") int memberbirth,
					  @RequestParam("memberemail") String memberemail,
					  @RequestParam("memberphone") int memberphone,
					  @RequestParam("membermbti") String membermbti,
					  @RequestParam("memberaddr") String memberaddr,
					  @RequestParam("aggrement") String aggrement,
					@RequestParam("uploadfile") MultipartFile uploadfile,
					@RequestParam("intro") String intro, 
					 Model model) {
				
				String savePath = "D:/sts-dev/uploadfiles";
				// String savePath = request.getRealPath("testimg"); // 파일이 저장될 프로젝트 안의 폴더 경로

				String originalFilename = uploadfile.getOriginalFilename(); // fileName.jpg
				String onlyFileName = originalFilename.substring(0, originalFilename.indexOf(".")); // fileName
				String extension = originalFilename.substring(originalFilename.indexOf(".")); // .jpg
				
				String rename = onlyFileName + "_" + getCurrentDayTime() + extension; // fileName_20150721-14-07-50.jpg
				String fullPath = savePath + "\\" + rename;

				if (!uploadfile.isEmpty()) {
					try {
						byte[] bytes = uploadfile.getBytes();
						BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(fullPath)));
						stream.write(bytes);
						stream.close();
						// model.addAttribute("resultMsg", "파일을 업로드 성공!");
					} catch (Exception e) {
						model.addAttribute("resultMsg", "파일을 업로드하는 데에 실패했습니다.");
					}
				} else {
					// model.addAttribute("resultMsg", "업로드할 파일을 선택해주시기 바랍니다.");
				}
				
				
				int result =ms.memberInsert(memberid, memberpwd, membername, membernickname, membergender, memberbirth, memberemail, memberphone, membermbti, memberaddr, aggrement, rename ,intro);
				 
				return "redirect:/memberLogin.do";
			}

			public String getCurrentDayTime() {
				long time = System.currentTimeMillis();
				SimpleDateFormat dayTime = new SimpleDateFormat("yyyyMMdd-HH-mm-ss", Locale.KOREA);
				return dayTime.format(new Date(time));
		} //회원정보
	
	@RequestMapping(value = "/memberRec.do")
	public String memberRec(
			SearchCriteria scri,Model model, HttpSession session
			) {
		int midx = (int)session.getAttribute("midx");
		MemberVo mv = ms.memberSelectOne(midx);
		model.addAttribute("mv2", mv);	
		
		String membermbti = mv.getMembermbti(); 
		
		//int cnt = ms.memberTotalCount(scri);
		//System.out.println("cnt"+cnt);
		ArrayList<MemberVo> alist = 	ms.memberSelectAll(membermbti);
		System.out.println("alist"+alist);	
		
	//	pm.setScri(scri);
	//	pm.setTotalCount(cnt);
		
		model.addAttribute("alist", alist);
	//	model.addAttribute("pm", pm);
		
		
		return "memberRec";
	}
	
	@RequestMapping(value="/othersProfile.do")
	public String othersProfile(SearchCriteria scri, @RequestParam("midx") int midx, Model model) {		
		int cnt = bs.boardTotalCount2(scri, midx);
		System.out.println("cnt"+cnt);
		ArrayList<BoardVo> alist2 = bs.boardSelectAll2(scri, midx);
		System.out.println("alist2"+alist2);	
		
		pm.setScri(scri);
		pm.setTotalCount(cnt);
		
		model.addAttribute("alist2", alist2);
		model.addAttribute("pm", pm);
		
		MemberVo mv = ms.memberSelectOne(midx);
		model.addAttribute("mv", mv);		
		
		return "othersProfile";
	}
	//회占쏙옙占쏙옙占쏙옙
	@RequestMapping(value="/memberProfile.do")
	public String memberProfile(			
			Model model, HttpSession session
 			) {
		int midx = (int)session.getAttribute("midx");
		MemberVo mv = ms.memberSelectOne(midx);
		model.addAttribute("mv", mv);		

		return "memberProfile";
	}
	//회占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
	@RequestMapping(value = "/memberProfileModify.do")
	public String memberProfileModify(
			Model model, HttpSession session
			) {
		int midx = (int)session.getAttribute("midx");
		MemberVo mv = ms.memberSelectOne(midx);
		model.addAttribute("mv", mv);	
				
		return "memberProfileModify";
	}
	@RequestMapping(value = "/memberProfileModifyAction.do")
	public String memberProfileModifyAction(@RequestParam("membername") String membername,
			@RequestParam("memberpwd") String memberpwd, @RequestParam("memberphone") int memberphone,
			@RequestParam("memberaddr") String memberaddr, @RequestParam("membermbti") String membermbti,
			@RequestParam("uploadfile") MultipartFile uploadfile, @RequestParam("intro") String intro, RedirectAttributes rttr,
			HttpSession session, Model model) {
		
		String savePath = "D:\\sts-dev\\uploadfiles";
		String rename = null;
		
	
		if (!uploadfile.isEmpty()) {
			try {
				String originalFilename = uploadfile.getOriginalFilename(); // fileName.jpg
				String onlyFileName = originalFilename.substring(0, originalFilename.indexOf(".")); // fileName
				String extension = originalFilename.substring(originalFilename.indexOf(".")); // .jpg
				
				rename = onlyFileName + "_" + getCurrentDayTime() + extension; // fileName_20150721-14-07-50.jpg
				String fullPath = savePath + "\\" + rename;
				
				byte[] bytes = uploadfile.getBytes();
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(fullPath)));
				stream.write(bytes);
				stream.close();
				// model.addAttribute("resultMsg", "파일을 업로드 성공!");
			} catch (Exception e) {
				model.addAttribute("resultMsg", "파일을 업로드하는 데에 실패했습니다.");
			}
		} else {
			// model.addAttribute("resultMsg", "업로드할 파일을 선택해주시기 바랍니다.");
		}
		
		int midx = (int) session.getAttribute("midx");
		int value = ms.memberProfileModify(midx, membername, memberpwd, memberphone, memberaddr, membermbti, rename,
				intro);
		String movelocation = null;
		if (value == 0) {
			movelocation = "redirect:/memberProfileModify.do";
		} else {
			rttr.addFlashAttribute("msg", "수정완료되었습니다.");
			movelocation = "redirect:/memberProfile.do";
		}
		return movelocation;
	}



	@RequestMapping(value="/memberLogout.do")
	public String memberLogout(			
			Model model, HttpServletRequest request
 			) {
		HttpSession session = request.getSession();
		session.invalidate();
				

		return "redirect:/index.do";
	}
	
	@RequestMapping(value="/memberFindId.do")
	public String memberFindId() {				
		
		return "memberFindId";
	}
	
	@RequestMapping(value="/memberFindIdAction.do")
	   public String memberFindIdAction(
	         @RequestParam("membername") String membername,
	         @RequestParam("memberemail") String memberemail,
	          HttpServletRequest request, RedirectAttributes rttr) {
	   MemberVo mv = ms.memberFindId(membername, memberemail);
	   //System.out.println("ms"+ms);
	   //System.out.println("占심뱄옙占쏙옙占싱듸옙"+mv.getMemberid());
	   String path =null;
	   if (mv == null) {
	         rttr.addFlashAttribute("msg","회원 정보가 맞지 않습니다.");
	         path = "redirect:/memberFindId.do";
	         
	      }else{
	         //model.addAttribute("memberid", mv.getMemberid());
	         rttr.addAttribute("membername", mv.getMembername());
	         HttpSession session = request.getSession();
	         session.setAttribute("membername", mv.getMembername());
	         session.setAttribute("membereamil", mv.getMemberemail());
	         
	         
	         path ="redirect:/memberFindId2.do";
	            }
	         return path;
	
	}@RequestMapping(value="/memberFindPwd.do")
	public String memberFindPwd() {				
		
		return "memberFindPwd";
	}
	
	@RequestMapping(value="/memberFindPwdAction.do")
	public String memberFindPwdAction(
			@RequestParam("memberid") String memberid,
			@RequestParam("memberemail") String memberemail,
			Model model) 
	{
	MemberVo mv = ms.memberFindPwd(memberid, memberemail);
	//System.out.println("ms"+ms);
	//System.out.println("占심뱄옙占쏙옙占싱듸옙"+mv.getMemberid());
	model.addAttribute("mv", mv);
	
		return "memberFindPwd2";
	}
	
	@RequestMapping(value="/memberFindPwd2.do")
	public String memberFindPwd2() {				
		
		return "memberFindPwd2";
	}
	
	@RequestMapping(value="/memberDrop.do")
	public String memberDrop(
			@ModelAttribute("midx") int midx,Model model) {
		
		MemberVo mv = ms.memberSelectOne(midx);
		model.addAttribute("mv", mv);		
		
		return "memberDrop";
	}
	
	@RequestMapping(value="/member/memberDropAction.do")
	public String memberDeleteAction(
			@RequestParam("midx") int midx,						
			RedirectAttributes rttr, HttpServletRequest request
			) {
		
		int value = ms.memberDrop(midx);
		rttr.addFlashAttribute("msg");
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:/index.do";
	}
	//회원가입 아이디 중복체크
	@ResponseBody
	@RequestMapping(value="/memberIdCheck.do")
	public HashMap<String,Integer> memberIdCheck(@RequestParam("memberid") String memberid) {	
		System.out.println("아이디중복체크");
		int result = ms.memberIdCheck(memberid);
		//int result = 1 ;
		HashMap<String,Integer> hm = new HashMap<String,Integer>();			
		hm.put("result", result);

		return hm;
	}
	//회원가입 이메일 중복체크
			@ResponseBody
			@RequestMapping(value="/memberEmailCheck.do")
			public HashMap<String,Integer> memberEmailCheck(@RequestParam("memberemail") String memberemail) {	
				System.out.println("이메일중복체크");
				int result = ms.memberEmailCheck(memberemail);
				//int result = 1 ;
				HashMap<String,Integer> hm = new HashMap<String,Integer>();			
				hm.put("result", result);

				return hm;
			}
			//회원가입 닉네임 중복체크
			@ResponseBody
			@RequestMapping(value="/memberNickCheck.do")
			public HashMap<String,Integer> memberNickCheck(@RequestParam("membernickname") String membernickname) {	
				System.out.println("닉네임중복체크");
				int result = ms.memberNickCheck(membernickname);
				//int result = 1 ;
				HashMap<String,Integer> hm = new HashMap<String,Integer>();			
				hm.put("result", result);

				return hm;
			}

			// 회원정보 프로필 사진 가져오기
			@ResponseBody
			@RequestMapping(value = "/displayphoto.do", method = RequestMethod.GET)
			public ResponseEntity<byte[]> displayphoto(String photo) throws Exception {

				System.out.println("photo:" + photo);

				InputStream in = null;
				ResponseEntity<byte[]> entity = null;

				// logger.info("FILE NAME :"+fileName);

				try {
					String formatName = photo.substring(photo.lastIndexOf(".") + 1);
					MediaType mType = MediaUtils.getMediaType(formatName);

					HttpHeaders headers = new HttpHeaders();

					in = new FileInputStream(uploadPath + photo);

					System.out.println("photo:" + photo);
					if (mType != null) {
						headers.setContentType(mType);
					} else {

						photo = photo.substring(photo.indexOf("_") + 1);
						headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
						headers.add("Content-Disposition",
								"attachment; photo=\"" + new String(photo.getBytes("UTF-8"), "ISO-8859-1") + "\"");
					}
					entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);

				} catch (Exception e) {
					e.printStackTrace();
					entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
				} finally {
					in.close();
				}
				return entity;
			}
	
	
}
