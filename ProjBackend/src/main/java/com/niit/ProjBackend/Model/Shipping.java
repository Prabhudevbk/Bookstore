package com.niit.ProjBackend.Model;

import java.util.UUID;

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
public class Shipping {
	
			@Id
			private String shipId;
			private String Name;
			private String address;
			private String city;
			public Shipping()
			{
				this.shipId="SHIP"+UUID.randomUUID().toString().substring(30).toUpperCase();
			}
			public String getShipId() {
				return shipId;
			}
			public void setShipId(String shipId) {
				this.shipId = shipId;
			}
			public String getName() {
				return Name;
			}
			public void setName(String name) {
				Name = name;
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
			private String Phone;
			
//			@OneToOne
//			@JoinColumn(name="orderId")
//			private Order order;
//			public Order getOrder() {
//				return order;
//			}
//			public void setOrder(Order order) {
//				this.order = order;
//			}
			@ManyToOne
			@JoinColumn(name="userId")
			private User user;
			public User getUser() {
				return user;
			}
			public void setUser(User user) {
				this.user = user;
			}
}
