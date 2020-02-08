package com.mindtree.bikeshop.service;

import java.util.List;

import com.mindtree.bikeshop.entity.Bike;
import com.mindtree.bikeshop.entity.Brand;
import com.mindtree.bikeshop.entity.Dealer;
import com.mindtree.bikeshop.exception.BikeShopAppServiceException;

public interface BikeShopAppService {

	List<Dealer> getDealers();

	List<Brand> getBrands();

	String assignBrand(int dealerId, int brandId);

	Bike insertBike(int brandId, Bike bike);

	List<Bike> getBikes(String dealerName) throws BikeShopAppServiceException;

	List<Integer> getInvestment();

}
