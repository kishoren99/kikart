package com.spikart1.AdminRepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spikart1.AdminDto.CustomerDto;

public interface CustomerRepository extends JpaRepository<CustomerDto, Integer>{

}
