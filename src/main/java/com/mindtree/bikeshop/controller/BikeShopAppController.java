package com.mindtree.bikeshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mindtree.bikeshop.entity.Bike;
import com.mindtree.bikeshop.entity.Brand;
import com.mindtree.bikeshop.entity.Dealer;
import com.mindtree.bikeshop.exception.BikeShopAppServiceException;
import com.mindtree.bikeshop.service.BikeShopAppService;

@Controller
public class BikeShopAppController {

	@Autowired
	BikeShopAppService bikeShopAppService;

	@RequestMapping("/")
	public String homepage() {
		return "homepage";
	}

	@RequestMapping("/form1")
	public String assignpage(Model model) {
		List<Dealer> dealers = bikeShopAppService.getDealers();
		List<Brand> brands = bikeShopAppService.getBrands();
		model.addAttribute("dealers", dealers);
		model.addAttribute("brands", brands);
		return "assign";
	}

	@RequestMapping("/assignBrand")
	public String assign(@RequestParam("dealerId") int dealerId, @RequestParam("brandId") int brandId) {
		bikeShopAppService.assignBrand(dealerId, brandId);
		return "homepage";

	}

	@RequestMapping("/form2")
	public String bikeform(Model model) {
		List<Brand> brands = bikeShopAppService.getBrands();
		model.addAttribute("brands", brands);
		return "bike";
	}

	@RequestMapping("/addBike")
	public String addBike(@RequestParam("brandId") int brandId, @ModelAttribute("Bike") Bike bike) {
		bikeShopAppService.insertBike(brandId, bike);
		return "homepage";

	}

	@GetMapping("/form3")
	public String passportForm() {
		return "viewbikes";
	}

	@GetMapping("/getBikes")
	public ModelAndView passportForm(@RequestParam("dealerName") String dealerName, Model model) throws BikeShopAppServiceException {
		List<Bike> bikes = bikeShopAppService.getBikes(dealerName);
		model.addAttribute("bikes", bikes);
		ModelAndView modelandview = new ModelAndView();
		modelandview.setViewName("viewbikes");
		return modelandview;
	}

	@GetMapping("/investment")
	public String investment(Model model) {
		List<Brand> brands = bikeShopAppService.getBrands();
		model.addAttribute("brands", brands);
		List<Integer> revenue = bikeShopAppService.getInvestment();
		model.addAttribute("revenues", revenue);
		return "finance";
	}

	@GetMapping("/form4")
	public String showDealers(Model model) {
		List<Dealer> dealers = bikeShopAppService.getDealers();
		model.addAttribute("dealers", dealers);
		return "dealersview";
	}

}
