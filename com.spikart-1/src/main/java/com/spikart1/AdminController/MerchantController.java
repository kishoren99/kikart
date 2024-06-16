package com.spikart1.AdminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spikart1.AdminDto.AdminDto;
import com.spikart1.AdminDto.MerchantDto;
import com.spikart1.AdminDto.ProductDto;
import com.spikart1.AdminService.MerchantService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MerchantController {

	@Autowired
	MerchantService merchantService;
	
	@GetMapping("/ms")
	public String merchantsignup()
	{
		return  "Merchantsignup";
	}
	
	@GetMapping("/ml")
	public String merchantLogin()
	{
		return "MerchantLogin";
	}

	
//	@ResponseBody
	@PostMapping("/submit_form")
	public String createAccount(@ModelAttribute MerchantDto merchantDto,ModelMap map)
	{
		return merchantService.createAccount(merchantDto,map);
		
	}
	
	@PostMapping("/login")
	public String loginValidation(MerchantDto merchantDto,ModelMap map,HttpSession session)
	{
		return merchantService.loginValidation(merchantDto, map,session);
	}
	
	
	@GetMapping("/fallmerchant")
	public ModelAndView fetchAllMerchants()
	{
		List<MerchantDto> list=merchantService.findAllMerchants();
		ModelAndView view=new ModelAndView("merchantviewPage");
		view.addObject("obj", list);
	    return view;
		
	}
	
	
	@RequestMapping("/deletebyidmechant")
	public void deleteMerchantById(@RequestParam int id,ModelMap map)
	{
		merchantService.deleteMerchantById(id, map);
	}
	
	
	@RequestMapping("/deleteAllMerchant")
	public void removeAllMerchant(ModelMap map)
	{
		merchantService.removeAllMerchant(map);
	}
	
	
	
	@GetMapping("/add-product")
	public String addProduct()
	{
		return "AddProduct";
	}
	
	@PostMapping("/add-product")
	public String addProduct(ProductDto productDto,ModelMap map,HttpSession session)
	{
		return merchantService.addProduct(productDto,map,session);
	}
	
	
	
	
	@GetMapping("/viewproduct")
	public ModelAndView viewAll(HttpSession session)
	{
		List<ProductDto> list=merchantService.mpviewAll(session);
		ModelAndView view=new ModelAndView();
		view.addObject("data", list);
		return view;
	}
	

	@GetMapping("/productdid")
	@ResponseBody
	public String deleteproductbyid(@RequestParam int pk,HttpSession httpSession) {
		merchantService.dpbyid(pk,httpSession);
		return "customer " + pk + " is deleted";

	}
	
	@GetMapping("/updateproduct1")
	public String updateproducts()
	{
		return "updateproduct";
		
	}
	
	@PostMapping("/updateproduct")
	@ResponseBody
	public String updateproduct(ProductDto productDto)
	{
		
		merchantService.updateProduct(productDto);
		return "product updated";
	}
	
}
