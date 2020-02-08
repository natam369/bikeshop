package com.mindtree.bikeshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.bikeshop.entity.Brand;

@Repository
public interface BrandRepository extends JpaRepository<Brand, Integer>{

}
