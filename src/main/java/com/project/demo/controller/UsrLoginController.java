package com.project.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.demo.service.MemberService;
import com.project.demo.utill.Ut;
import com.project.demo.vo.Member;
import com.project.demo.vo.ResultData;
import com.project.demo.vo.Rq;

@Controller
public class UsrLoginController {
	private MemberService memberService;
	private Rq rq;
	
	public UsrLoginController(MemberService memberService, Rq rq) {
		this.memberService = memberService;
		this.rq = rq;
	}
	@RequestMapping("usr/home/login")
	public String showLogin() {
		return "usr/login/login";
	}
	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public ResultData<Member> doJoin(String loginId, String loginPw, String name, String email){
		
		if(Ut.empty(email)) {
			return ResultData.from("F-3", "Email (을)를 입력해주세요");
		}
		if(Ut.empty(loginPw)) {
			return ResultData.from("F-2","loginPw(을)를 입력해주세요");
		}
		if(Ut.empty(name)) {
			return ResultData.from("F-3", "name(을)를 입력해주세요");
		}
		Member member = memberService.getMemberById(joinRd.getData1);
				
		return ResultData.newData(joinRd, "member", member);
	}
		
}
