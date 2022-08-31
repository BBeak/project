package com.project.demo.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.project.demo.service.MemberService;
import com.project.demo.utill.Ut;
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
	public String doJoin(String loginId, String loginPw, String name, String email,@RequestParam(defaultValue ="/") String afterLoginUrim, MultipartRequest multipartRequest){
		
		if(Ut.empty(email)) {
			return rq.jsHistoryBack("F-3", "Email (을)를 입력해주세요");
		}
		if(Ut.empty(loginPw)) {
			return rq.jsHistoryBack("F-2","loginPw(을)를 입력해주세요");
		}
		if(Ut.empty(name)) {
			return rq.jsHistoryBack("F-3", "name(을)를 입력해주세요");
		}
		ResultData<Integer> joinRd = memberService.join(loginId, loginPw, name, email);
		
		if(joinRd.isFail()) {
			 return rq.jsHistoryBack(joinRd.getResultCode(), joinRd.getMsg());
		}

		

		

		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();

		for (String fileInputName : fileMap.keySet()) {
			MultipartFile multipartFile = fileMap.get(fileInputName);

		

		return rq.jsReplace("회원가입이 완료되었습니다. 로그인 후 이용해주세요.",);
	}
	}
}
