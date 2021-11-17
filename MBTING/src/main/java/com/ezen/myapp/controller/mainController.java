package com.ezen.myapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.myapp.domain.MemberVo;
import com.ezen.myapp.service.MemberService;

@Controller

public class mainController {
	
	@Autowired
	MemberService ms;
	
	@RequestMapping(value = "/index.do")
	public String index() {
		return "index";
		
	}
	
	@RequestMapping(value = "/index2.do")
	public String index2(
			Model model, HttpSession session
			) {
		String path=null;
		if(session.getAttribute("midx")!=null) {
			int midx = (int)session.getAttribute("midx");
			MemberVo mv = ms.memberSelectOne(midx);
			model.addAttribute("mv", mv);
			path = "index2";
		}else {
			path = "redirect:/index.do";
		}
		
		return path;
	}

	@RequestMapping(value = "/serviceCenter.do")
	public String serviceCenter() {
		
		
		
		return "serviceCenter";
	}
	@RequestMapping(value = "/Board2.do")
	public String Board2() {
		
		
		
		return "Board2";
	}
	
	@RequestMapping(value = "/companyintroduction.do")
	public String companyintroduction() {
		
		
		
		return "companyintroduction";
	}
	
	@RequestMapping(value = "/serviceIntroduction.do")
	public String serviceIntroduction() {
		
		
		
		return "serviceIntroduction";
	}
	

	@RequestMapping(value = "/consulting.do")
	public String consulting() {
		
		
		
		return "consulting";
	}
	
	@RequestMapping(value = "/debate.do")
	public String debate() {
		
		
		
		return "debate";
	}
	
	@RequestMapping(value = "/infoM.do")
	public String infoM() {
		
		
		
		return "infoM";
	}
	

	
	
	@RequestMapping(value = "/infoP.do")
	public String infoP() {
		
		
		
		return "infoP";
	}
	
	@RequestMapping(value = "/terms.do")
	public String terms() {
		
		
		
		return "terms";
	}
	
	
	
	
}
