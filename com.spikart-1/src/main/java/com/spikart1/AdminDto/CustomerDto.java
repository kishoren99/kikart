package com.spikart1.AdminDto;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;


@Data
@Entity
public class CustomerDto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private long mobile;
	private String passowrd;
	private int otp;
//	public int getId() {
//		return id;
//	}
//	public void setId(int id) {
//		this.id = id;
//	}
//	public String getName() {
//		return name;
//	}
//	public void setName(String name) {
//		this.name = name;
//	}
//	public String getEmail() {
//		return email;
//	}
//	public void setEmail(String email) {
//		this.email = email;
//	}
//	public long getMobile() {
//		return mobile;
//	}
//	public void setMobile(long mobile) {
//		this.mobile = mobile;
//	}
//	public String getPassowrd() {
//		return passowrd;
//	}
//	public void setPassowrd(String passowrd) {
//		this.passowrd = passowrd;
//	}
//	public int getOtp() {
//		return otp;
//	}
//	public void setOtp(int otp) {
//		this.otp = otp;
//	}
//	@Override
//	public String toString() {
//		return "CustomerDto [id=" + id + ", name=" + name + ", email=" + email + ", mobile=" + mobile + ", passowrd="
//				+ passowrd + ", otp=" + otp + "]";
//	}
//	
	
	
	
}
