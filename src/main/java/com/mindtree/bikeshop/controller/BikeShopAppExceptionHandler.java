package com.mindtree.bikeshop.controller;

import java.util.Date;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.mindtree.bikeshop.exception.InvalidDealerException;

@ControllerAdvice
public class BikeShopAppExceptionHandler {
	
	@ExceptionHandler(InvalidDealerException.class)
	public ModelAndView InvalidDealer(Exception e , Throwable cause ,Model model)
	{
		model.addAttribute("errormessage",e.getLocalizedMessage());
		ModelAndView mview = new ModelAndView();
		mview.addObject("Timestamp", new Date());
		mview.setViewName("errordealernamepage");
		return mview;
		
	}

}
