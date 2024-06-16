package com.spikart1.AdminDao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;

import com.spikart1.AdminDto.CustomerDto;
import com.spikart1.AdminRepository.CustomerRepository;

@Repository
public class CustomerDao {

	@Autowired
	CustomerRepository customerRepository;
	
	public String createCustomer(CustomerDto customerDto)
	{
		customerRepository.save(customerDto);
		return "account created";
	}
	
	
	
	public CustomerDto findCustomerById(int id)
	{
		Optional<CustomerDto> odto=customerRepository.findById(id);
		if(odto.isPresent())
		{
		return odto.get();
		}
		else {
			return null;
		}
		
	}
	
	public List<CustomerDto> findAllCustomer()
	{
		List<CustomerDto> dtos=customerRepository.findAll();
		if(dtos.isEmpty())
		{
			return null;
		}
		return dtos;
	}



	public void deleteCustomerById(int id)
	{
		Optional<CustomerDto> customerDto=customerRepository.findById(id);
		CustomerDto dto=customerDto.get();
		if(dto!=null)
		{
		customerRepository.deleteById(id);
		}
		else
		{
			System.out.println("no object found");
		}
		
	}


	public void removeAll(ModelMap map)
	{
		List<CustomerDto> customerDtos=customerRepository.findAll();
		if(customerDtos.isEmpty())
		{
			map.put("nodata", "no data found in the table");
			
		}
		else
		{
			customerRepository.deleteAll();

		}
	}


	
	

}
