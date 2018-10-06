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
public class Billing {
		
		@Id
		private String billId;
		private String billName;
		private String address;
		private String city;
		private String Phone;
		public Billing()
		{
			this.billId="BILL"+UUID.randomUUID().toString().substring(30).toUpperCase();
		}
		public String getBillId() {
			return billId;
		}
		public void setBillId(String billId) {
			this.billId = billId;
		}
		public String getBillName() {
			return billName;
		}
		public void setBillName(String billName) {
			this.billName = billName;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public String getPhone() {
			return Phone;
		}
		public void setPhone(String phone) {
			Phone = phone;
		}
		
		@OneToOne
		@JoinColumn(name="userId")
		private User user;
		
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
//		@OneToOne
//		@JoinColumn(name="cartId")
//		private Cart cart;
//		public Cart getCart() {
//			return cart;
//		}
//		public void setCart(Cart cart) {
//			this.cart = cart;
//		}
//		@OneToOne
//		@JoinColumn(name="orderId")
//		private Order order;
//		public Order getOrder() {
//			return order;
//		}
//		public void setOrder(Order order) {
//			this.order = order;
//		}
}
