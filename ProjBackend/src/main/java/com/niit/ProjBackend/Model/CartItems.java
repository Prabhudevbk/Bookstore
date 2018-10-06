package com.niit.ProjBackend.Model;

import java.util.UUID;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class CartItems {
	
				@Id
				private String cartItemId;
				public CartItems()
				{
					this.cartItemId="CARTITEM"+UUID.randomUUID().toString().substring(30).toUpperCase();
				}
				public String getCartItemId() {
					return cartItemId;
				}
				public void setCartItemId(String cartItemId) {
					this.cartItemId = cartItemId;
				}
				public double getPrice() {
					return price;
				}
				public void setPrice(double price) {
					this.price = price;
				}
				private double price;
				
				@ManyToOne
				@JoinColumn(name="cartId")
				private Cart cart;
				public Cart getCart() {
					return cart;
				}
				public void setCart(Cart cart) {
					this.cart = cart;
				}
				@OneToOne
				@JoinColumn(name="prodId")
				private Product product;
				public Product getProduct() {
					return product;
				}
				public void setProduct(Product product) {
					this.product = product;
				}
}
