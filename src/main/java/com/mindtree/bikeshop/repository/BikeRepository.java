package com.mindtree.bikeshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.bikeshop.entity.Bike;

@Repository
public interface BikeRepository extends JpaRepository<Bike, Integer>{

}
