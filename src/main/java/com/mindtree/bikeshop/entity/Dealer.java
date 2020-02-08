package com.mindtree.bikeshop.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Dealer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int dealerId;
	@Column(unique = true)
	private String dealerName;
	private String address;
	
	@OneToOne(cascade = CascadeType.ALL)
	private Brand brand;

	@Override
	public String toString() {
		return "Dealer [dealerId=" + dealerId + ", dealerName=" + dealerName + ", address=" + address + ", brand="
				+ brand + "]";
	}

	public int getDealerId() {
		return dealerId;
	}

	public void setDealerId(int dealerId) {
		this.dealerId = dealerId;
	}

	public String getDealerName() {
		return dealerName;
	}

	public void setDealerName(String dealerName) {
		this.dealerName = dealerName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public Dealer(int dealerId, String dealerName, String address, Brand brand) {
		super();
		this.dealerId = dealerId;
		this.dealerName = dealerName;
		this.address = address;
		this.brand = brand;
	}

	public Dealer() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
