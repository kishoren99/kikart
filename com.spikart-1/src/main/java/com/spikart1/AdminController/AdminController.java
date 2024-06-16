package com.spikart1.AdminController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.spikart1.AdminDto.AdminDto;
import com.spikart1.AdminService.AdminService;

@Controller
//@RequestMapping("/spikart")
public class AdminController {

	@Autowired
	AdminService adminService;

	// loclhost:8080/signup
	@GetMapping("/as")
	public String adminSignUp() {
		return "AdminSignup";
	}

	@GetMapping("/al")
	public String adminLogin() {
		return "AdminLogin";
	}

//	@ResponseBody
	@PostMapping("/register")
	public String createAccount(@ModelAttribute AdminDto adminDto) {
		adminService.createAccount(adminDto);
		return "AdminLogin";

	}

	@PostMapping("/adminlogin")
	public String loginValidation(AdminDto adminDto, ModelMap map) {
		return adminService.loginValidation(adminDto, map);
	}

}
