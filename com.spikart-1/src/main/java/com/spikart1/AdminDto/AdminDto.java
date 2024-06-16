package com.spikart1.AdminDto;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class AdminDto {

	private String name;
	@Id
	private String email;
	private long phone;
	private String password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "AdminDto [name=" + name + ", email=" + email + ", phone=" + phone + ", password=" + password + "]";
	}
	
	
	
	
	
	
	
}
