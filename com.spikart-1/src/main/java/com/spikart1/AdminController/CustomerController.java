package com.spikart1.AdminController;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spikart1.AdminDto.CustomerDto;
import com.spikart1.AdminService.CustomerService;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Controller
public class CustomerController {

	@Autowired 
	CustomerService service;
	
	//add dependencies of springboot starter mail

	@Autowired
	JavaMailSender javaMailSender;
	
	//loclhost
	@GetMapping("/")
	public String loadHome()
	{
		return "home";
	}
	
	@GetMapping("/cs")
	public String loadSignUp()
	{
		return "customersignup";
	}
	
	
	@GetMapping("/cl")
	public String loadLogin()
	{
		return "CustomerLogin";
	}
	
	@PostMapping("/customerSignup")
//	@ResponseBody
	public String createCustomer(CustomerDto customerDto,ModelMap map) throws UnsupportedEncodingException, MessagingException
	{
		int otp=new Random().nextInt(1000,9999);
		customerDto.setOtp(otp);
//		return customerDto.toString();
		service.createCustomer(customerDto);
		
		if(sendMessage(customerDto))
		{
			map.put("pass","otp has been sent");
			map.put("id", customerDto.getId());
			return "enter-otp";
		}
		else
			return "customersignup";
	}
	
	
	public boolean sendMessage(CustomerDto customerDto) throws UnsupportedEncodingException, MessagingException
	{
		
		MimeMessage mimessage=javaMailSender.createMimeMessage();
		MimeMessageHelper helper=new MimeMessageHelper(mimessage);
		
	    helper.setFrom("lavanyasl324@gmail.com", "Customer Authentication");
	    helper.setTo(customerDto.getEmail());
	    helper.setSubject("<h1>otp verification</h1>");
	    helper.setText("hello "+customerDto.getName()+"your otp is "+customerDto.getOtp());
	    
	    
	    javaMailSender.send(mimessage);
	    
	    return true;
	}
	
	@PostMapping("/verify-otp")
	public String otpVerification(@ModelAttribute CustomerDto customerDto,ModelMap map)
	{
		return service.verifyOtp(customerDto,map);
//		System.out.println(customerDto.getId());
//		System.out.println(customerDto.getOtp());
//		int id=customerDto.getId();
//		int otp=customerDto.getOtp();
//		return service.verifyOtp(id,otp);
	}
	
	@PostMapping("/customerLogin")
	public String loginValidation(CustomerDto customerDto,ModelMap map)
	{
		return service.loginValidation(customerDto, map);
	}
	

	@GetMapping("/fallCustomer")
	public ModelAndView fetchAll()
	{
		List<CustomerDto> list=service.findAllCustomer();
		ModelAndView view=new ModelAndView("viewNremovePage");
		view.addObject("obj", list);
		
	    return view;
		
	}
	
	@RequestMapping("/deletebyidcustomer")
	public void deleteCustomerById(@RequestParam int id,ModelMap map)
	{
		service.deleteCustomerById(id,map);
	}
	
	
	@RequestMapping("/deleteAllCustomer")
	public void removeAll(ModelMap map)
	{
		 service.removeAll(map);
	}
	
}
