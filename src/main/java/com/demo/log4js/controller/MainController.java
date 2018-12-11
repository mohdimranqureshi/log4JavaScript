package com.demo.log4js.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "/index")
	public ModelAndView getIndexPage() {
		ModelAndView model = new ModelAndView("main");
		return model;

	}

	@RequestMapping(value = "/getLogs")
	@ResponseBody
	public String getLogs(@RequestBody String message, HttpServletRequest request , HttpServletResponse response){
		
		System.out.println(message);
		logger.error("Something went wrong: "+message);
		return message;
	}
}
