package com.mindtree.bikeshop.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Brand {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int brandId;
	@Column(unique = true)
	private String brandName;
	
	@OneToMany(cascade = CascadeType.ALL)
	private List <Bike> bikes;

	@Override
	public String toString() {
		return "Brand [brandId=" + brandId + ", brandName=" + brandName + ", bikes=" + bikes + "]";
	}

	public int getBrandId() {
		return brandId;
	}

	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public List<Bike> getBikes() {
		return bikes;
	}

	public void setBikes(List<Bike> bikes) {
		this.bikes = bikes;
	}

	public Brand(int brandId, String brandName, List<Bike> bikes) {
		super();
		this.brandId = brandId;
		this.brandName = brandName;
		this.bikes = bikes;
	}

	public Brand() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
