package com.cass.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cass.dto.MemberVO;
import com.cass.service.MemberService;

@Controller
@RequestMapping("/SManage")
public class PSMController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/PSM", method=RequestMethod.GET)
	public void PSMGET(MemberVO member) throws Exception{
		
	}
}
