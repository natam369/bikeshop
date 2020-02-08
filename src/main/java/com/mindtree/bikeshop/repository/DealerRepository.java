package com.mindtree.bikeshop.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.bikeshop.entity.Dealer;

@Repository
public interface DealerRepository extends JpaRepository<Dealer, Integer>{

	Optional<Dealer> findByDealerName(String dealerName);

}
