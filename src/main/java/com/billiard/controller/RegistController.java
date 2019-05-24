package com.billiard.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("regist")
public class RegistController {
	
	@RequestMapping(value="")
	@ResponseBody
	public String toRegist() {
		return "www.baidu";
	}
}
