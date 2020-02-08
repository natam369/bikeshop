package com.mindtree.bikeshop.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.bikeshop.entity.Bike;
import com.mindtree.bikeshop.entity.Brand;
import com.mindtree.bikeshop.entity.Dealer;
import com.mindtree.bikeshop.exception.BikeShopAppServiceException;
import com.mindtree.bikeshop.exception.InvalidDealerException;
import com.mindtree.bikeshop.repository.BikeRepository;
import com.mindtree.bikeshop.repository.BrandRepository;
import com.mindtree.bikeshop.repository.DealerRepository;
import com.mindtree.bikeshop.service.BikeShopAppService;

@Service
public class BikeShopAppServiceImpl implements BikeShopAppService {

	@Autowired
	BikeRepository bikeRepo;

	@Autowired
	BrandRepository brandRepo;

	@Autowired
	DealerRepository dealerRepo;

	@Override
	public List<Dealer> getDealers() {
		// TODO Auto-generated method stub
		return dealerRepo.findAll();
	}

	@Override
	public List<Brand> getBrands() {
		// TODO Auto-generated method stub
		return brandRepo.findAll();
	}

	@Override
	public String assignBrand(int dealerId, int brandId) {
		// TODO Auto-generated method stub
		Dealer dealer = dealerRepo.findById(dealerId).get();
		Brand brand = brandRepo.findById(brandId).get();
		dealer.setBrand(brand);
		dealerRepo.save(dealer);
		return "assigned brand to dealer";
	}

	@Override
	public Bike insertBike(int brandId, Bike bike) {
		// TODO Auto-generated method stub
		Brand brand = brandRepo.findById(brandId).get();
		List<Bike> bikes = brand.getBikes();
		bikes.add(bike);
		brand.setBikes(bikes);
		bikeRepo.save(bike);
		return null;
	}

	@Override
	public List<Bike> getBikes(String dealerName) throws BikeShopAppServiceException {
		// TODO Auto-generated method stub
		Dealer dealerr = dealerRepo.findByDealerName(dealerName).orElseThrow(()-> new InvalidDealerException("no such dealer"));
		List<Dealer> dealers = dealerRepo.findAll();
		List<Bike> bikes = new ArrayList<Bike>();
		for (Dealer dealer : dealers) {
			if (dealer.getDealerName().equalsIgnoreCase(dealerName)) {
				bikes = dealer.getBrand().getBikes();
			}
		}
		return bikes;
	}

	@Override
	public List<Integer> getInvestment() {
		// TODO Auto-generated method stub
		List<Brand> brands = brandRepo.findAll();
		List<Integer> revenues=new ArrayList<Integer>();
		for (Brand brand : brands) {
			int revenue = 0;
			for (Bike bike : brand.getBikes()) {
				revenue = revenue + bike.getPrice();
			}
			revenues.add(revenue);
		}
		return revenues;
	}

}
