package com.spikart1.AdminDto;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.Data;


@Data
@Entity
public class MerchantDto {
	
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)	
 private int m_id;
 private String m_name;

 private String m_company_address;
 private String m_GSTN;
 private String m_PAN;
 private String email;
 private long phno;
 private String password;
 
 @OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
 private List<ProductDto> products=new ArrayList<>();
	
}
