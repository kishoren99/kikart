package com.spikart1.AdminDao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;

import com.spikart1.AdminDto.AdminDto;
import com.spikart1.AdminDto.CustomerDto;
import com.spikart1.AdminDto.MerchantDto;
import com.spikart1.AdminDto.ProductDto;
import com.spikart1.AdminRepository.AdminRepository;
import com.spikart1.AdminRepository.CustomerRepository;
import com.spikart1.AdminRepository.MerchantRepository;
import com.spikart1.AdminRepository.ProductRepository;

@Repository
public class AdminDao {

	@Autowired
	AdminRepository adminRepository;
	
	@Autowired
	ProductRepository productRepository;
	
public void createAccount(AdminDto adminDto)
{
	adminRepository.save(adminDto);
//	return "Account created successfully";
	
}


public AdminDto findAdminById(String mail)
{
	Optional<AdminDto> odto=adminRepository.findById(mail);
	if(odto.isPresent())
	{
	return odto.get();
	}
	else {
		return null;
	}
	
}





}
