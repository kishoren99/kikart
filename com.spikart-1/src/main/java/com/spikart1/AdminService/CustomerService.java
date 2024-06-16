package com.spikart1.AdminService;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.spikart1.AdminDao.CustomerDao;
import com.spikart1.AdminDto.CustomerDto;

@Service
public class CustomerService {

	@Autowired
	CustomerDao customerDao;

	public String createCustomer(CustomerDto customerDto) {
		return customerDao.createCustomer(customerDto);
	}

	public String verifyOtp(CustomerDto customerDto, ModelMap map) {
		CustomerDto dbto=customerDao.findCustomerById(customerDto.getId());
		if(dbto.getOtp()==customerDto.getOtp())
		{
			map.put("pass", "account created sucessfully");
			map.put("loginid","user id for login"+ customerDto.getId());
			return "CustomerLogin";
		}
		else
		{
			map.put("fail", "please enter proper otp");
			return "enter-otp";
		}
	}
	
	public String loginValidation(CustomerDto customerDto,ModelMap map)
	{
		CustomerDto dto=customerDao.findCustomerById(customerDto.getId());
		if(dto!=null)
		{
			if(dto.getPassowrd().equals(customerDto.getPassowrd()))
			{
				return "CustomerHomePage";
			}
			else
			{
				map.put("fail", "please enter proper password");
				return "CustomerLogin";
			}
		}
		else
		{
			map.put("no", "account doesnot exist,create new account");
			return "customersignup";
		}
	}
	
	
	public List<CustomerDto> findAllCustomer() {
		
//		List<CustomerDto> dtos=customerDao.findAllCustomer();
//		if(dtos.isEmpty())
//		{
//			
//			return null;
//		}
		return customerDao.findAllCustomer();
	}

	public void deleteCustomerById(int id, ModelMap map) {
		map.put("delete", "the account of customer with id " + id + " got deleted");
		customerDao.deleteCustomerById(id);

	}

	public void removeAll(ModelMap map) {
		map.put("deleteAll", "all data get deleted");
		customerDao.removeAll(map);
	}


}
