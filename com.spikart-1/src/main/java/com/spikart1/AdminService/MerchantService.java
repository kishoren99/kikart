package com.spikart1.AdminService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.spikart1.AdminDao.MerchantDao;
import com.spikart1.AdminDto.AdminDto;
import com.spikart1.AdminDto.MerchantDto;
import com.spikart1.AdminDto.ProductDto;

import jakarta.mail.Session;
import jakarta.servlet.http.HttpSession;

@Service
public class MerchantService {

	
	@Autowired
	MerchantDao merchantDao;

	public String createAccount(MerchantDto merchantDto,ModelMap map) {
		merchantDao.createAccount(merchantDto);
		map.put("pass", "account created sucessfully");
		map.put("loginid","user id for login"+ merchantDto.getM_id());
//		return "MerchantLogin";
		return "MerchantLogin";
	
	}

	public String loginValidation(MerchantDto merchantDto, ModelMap map,HttpSession session) {
		MerchantDto dbto = merchantDao.findCustomerById(merchantDto.getM_id());
          System.out.println(dbto);
		if (dbto != null) {
			if((dbto.getM_id()==merchantDto.getM_id())&&(dbto.getPassword().equals(merchantDto.getPassword()))) {
			session.setAttribute("merchant", dbto);
				return "MerchantHomejsp";
			} else {
				map.put("fail", "please enter proper password or id");
				return "MerchantLogin";
			}
		} else {
			return "Merchantsignup";
		}
	}
	
	public List<MerchantDto> findAllMerchants() {
		return merchantDao.findAllMerchants();
	}
	
	public void deleteMerchantById(int id, ModelMap map) {
		map.put("delete1", "the account of merchant with id " + id + " got deleted");
		merchantDao.deleteMerchantById(id);

	}

	
	public void removeAllMerchant(ModelMap map) {
		map.put("deleteAllMerchant", "all data get deleted");
		merchantDao.removeAllMercant(map);
	}
	
	
	//adding the products by perticular merchant ID
	public String addProduct(ProductDto productDto,ModelMap map,HttpSession httpSession)
	{
		MerchantDto merchantDto=(MerchantDto) httpSession.getAttribute("merchant");
        if(merchantDto==null)
        {
        	map.put("invalid", "Invalid session, please Login again");
        	return "MerchantLogin";
        }
        else
        {
        	List<ProductDto> list=merchantDto.getProducts();
        	list.add(productDto);
        	merchantDto.setProducts(list);
        	merchantDao.createAccount(merchantDto);
        	httpSession.setAttribute("merchant", merchantDto);
        	map.put("pass", "Product added success");
        	
        	return "MerchantHomejsp";
        }
		
		}
	
	
	public List<ProductDto> mpviewAll(HttpSession session)
	{
		return merchantDao.mpviewAll(session);
	}
	
	
	//to delete the product of perticular  merchant id
	public void dpbyid(int pk,HttpSession httpSession)
	{
		MerchantDto merchantDto=(MerchantDto) httpSession.getAttribute("merchant");
	    merchantDto.getProducts().remove(merchantDao.findproductById(pk));
		merchantDao.createAccount(merchantDto);
       	merchantDao.dpbyid(pk);
    	httpSession.setAttribute("merchant", merchantDto);
	}
	

	public void updateProduct(ProductDto productDto)
	{
		merchantDao.updateProduct(productDto);
	}
	
}
