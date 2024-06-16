package com.spikart1.AdminService;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.spikart1.AdminDao.AdminDao;
import com.spikart1.AdminDao.CustomerDao;
import com.spikart1.AdminDto.AdminDto;
import com.spikart1.AdminDto.CustomerDto;
import com.spikart1.AdminDto.MerchantDto;
import com.spikart1.AdminDto.ProductDto;

@Service
public class AdminService {

	@Autowired
	AdminDao adminDao;

	public void createAccount(AdminDto adminDto) {
		adminDao.createAccount(adminDto);
	}

	public String loginValidation(AdminDto adminDto, ModelMap map) {
		AdminDto dbto = adminDao.findAdminById(adminDto.getEmail());

		if (dbto != null) {
			if (dbto.getEmail().equals(adminDto.getEmail()) && (dbto.getPassword().equals(adminDto.getPassword()))) {
				map.put("pass", "account created sucessfully");
//			map.put("login mail","user id for login"+ adminDto.getEmail());
//			map.put("login mail","please login through mail and password");

				return "AdminhomePage";
			} else {
				map.put("fail", "please enter proper password");
				return "AdminLogin";
			}
		} else {
			return "AdminSignup";
		}

	}
	
	


}
