package com.niit.ProjBackend.Model;

import java.util.List;
import java.util.UUID;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Supplier {
	@Id
	private String SupId;
	private String SupName;
	private String EmailId;
	private String PhoneNo;
	private String Address;
	public Supplier()
	{
		this.SupId="AUTH"+UUID.randomUUID().toString().substring(30).toUpperCase();
	}
	public String getSupId() {
		return SupId;
	}
	public void setSupId(String supId) {
		SupId = supId;
	}
	public String getSupName() {
		return SupName;
	}
	public void setSupName(String supName) {
		SupName = supName;
	}
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}
	public String getPhoneNo() {
		return PhoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		PhoneNo = phoneNo;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	@OneToMany(mappedBy="supplier", cascade=CascadeType.ALL)
	private List<Product> product;
	public List<Product> getProduct() {
		return product;
	}
	public void setProduct(List<Product> product) {
		this.product = product;
	}
}
