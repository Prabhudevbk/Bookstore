package com.niit.ProjBackend.Model;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class BestSeller {

	@Id
	private String bestId;
	private String name;
	private String ratings;
	@OneToOne
	@JoinColumn(name="prodId")
	private Product product;
	
	public BestSeller()
	{
		this.bestId="BEST"+UUID.randomUUID().toString().substring(30).toUpperCase();
	}
	public String getBestId() {
		return bestId;
	}
	public void setBestId(String bestId) {
		this.bestId = bestId;
	}
	public String getRatings() {
		return ratings;
	}
	public void setRatings(String ratings) {
		this.ratings = ratings;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
}
