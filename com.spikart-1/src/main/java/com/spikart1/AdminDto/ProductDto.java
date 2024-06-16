package com.spikart1.AdminDto;

import java.io.IOException;

import org.apache.commons.codec.binary.Base64;
import org.springframework.web.multipart.MultipartFile;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import lombok.Data;

@Data
@Entity
public class ProductDto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int product_id;
	private String product_name;
	private double price;
	private int quantity;
	@Lob
	@Column(columnDefinition = "MEDIUMBLOB")
	private byte[] image;
	private String description;
	
	
	public void setImage(MultipartFile file)
	{
		byte[] image=null;
		try {
			image=new byte[file.getInputStream().available()];
			file.getInputStream().read(image);
		}catch (IOException e) {
            e.printStackTrace();
		}
		this.image=image;
		}
	
	//add dependency apache commons codec 1.15
   //<td><img height="100px" width="70px" src="data:image/jpeg;base64,<%=a.getImageEncryptFormate() %>"></td>

	public String getImageEncryptFormate()
	{
		return Base64.encodeBase64String(image);
	}
	}
