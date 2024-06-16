package com.spikart1.AdminRepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spikart1.AdminDto.AdminDto;

public interface AdminRepository extends JpaRepository<AdminDto,String>{

}
