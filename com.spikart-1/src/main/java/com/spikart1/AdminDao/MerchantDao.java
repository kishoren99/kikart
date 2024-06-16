package com.spikart1.AdminDao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;

import com.spikart1.AdminDto.AdminDto;
import com.spikart1.AdminDto.MerchantDto;
import com.spikart1.AdminDto.ProductDto;
import com.spikart1.AdminRepository.MerchantRepository;
import com.spikart1.AdminRepository.ProductRepository;
import com.spikart1.AdminService.MerchantService;

import jakarta.servlet.http.HttpSession;

@Repository
public class MerchantDao {

	@Autowired
	MerchantRepository merchantRepository;
	
	@Autowired
	ProductRepository productRepository;
	
	public void createAccount(MerchantDto merchantDto) {
		merchantRepository.save(merchantDto);
		
	}

	public MerchantDto findCustomerById(int m_id) {
		Optional<MerchantDto> odto=merchantRepository.findById(m_id);
		if(odto.isPresent())
		{
		return odto.get();
		}
		else {
			return null;
		}
	}
	
	
	public List<MerchantDto> findAllMerchants()
	{
		List<MerchantDto> dtos=merchantRepository.findAll();
		if(dtos.isEmpty())
		{
			return null;
		}
		return dtos;
	}
		

	public void deleteMerchantById(int id)
	{
		Optional<MerchantDto> merchantdto=merchantRepository.findById(id);
		MerchantDto dto=merchantdto.get();
		if(dto!=null)
		{
		merchantRepository.deleteById(id);
		}
		else
		{
			System.out.println("no object found");
		}
		
	}


	public void removeAllMercant(ModelMap map)
	{
		List<MerchantDto> merchantsDtos=merchantRepository.findAll();
		if(merchantsDtos.isEmpty())
		{
			map.put("nodata", "no data found in  merchant  table");
			
		}
		else
		{
			merchantRepository.deleteAll();

		}
	}
	
	public void addProduct(ProductDto productDto)
	{
		productRepository.save(productDto);
	}
	
	
	
	public ProductDto findproductById(int pk)
	{
	return productRepository.findById(pk).orElse(null);
	}
	
	
	
	public List<ProductDto> mpviewAll(HttpSession session) {
		{

			MerchantDto m = (MerchantDto) session.getAttribute("merchant");

			Optional<MerchantDto> d1 = merchantRepository.findById(m.getM_id());
			if (d1.isPresent()) {
				MerchantDto d2 = d1.get();
				List<ProductDto> d = d2.getProducts();
				return d;
			} 
			else {
				return null;
			}
		}
	}
	
	public void dpbyid(int pk)
	{
		productRepository.deleteById(pk);
	}

	public void updateProduct(ProductDto productDto)
	{
		productRepository.save(productDto);
	}

}
