package com.spikart1.AdminRepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spikart1.AdminDto.ProductDto;

public interface ProductRepository extends JpaRepository<ProductDto, Integer>{

}
