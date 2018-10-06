package com.niit.ProjBackend.Model;

import java.util.List;
import java.util.UUID;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="Orders")
@Component
public class Order {
				
				@Id
				private String orderId;
				private String orderDate;
				private String orderTime;
				private double grandTotal=0.0;
				public Order()
				{
					this.orderId="AUTH"+UUID.randomUUID().toString().substring(30).toUpperCase();
				}
				public String getOrderId() {
					return orderId;
				}
				public void setOrderId(String orderId) {
					this.orderId = orderId;
				}
				public String getOrderDate() {
					return orderDate;
				}
				public void setOrderDate(String orderDate) {
					this.orderDate = orderDate;
				}
				public String getOrderTime() {
					return orderTime;
				}
				public void setOrderTime(String orderTime) {
					this.orderTime = orderTime;
				}
				public double getGrandTotal() {
					return grandTotal;
				}
				public void setGrandTotal(double grandTotal) {
					this.grandTotal = grandTotal;
				}
				
				@OneToOne(cascade=CascadeType.ALL)
				@JoinColumn(name="billingId")
				private Billing billing;
				public Billing getBilling() {
					return billing;
				}
				public void setBilling(Billing billing) {
					this.billing = billing;
				}
				
				@OneToOne(cascade=CascadeType.ALL)
				@JoinColumn(name="shippingId")
				private Shipping shipping;
				public Shipping getShipping() {
					return shipping;
				}
				public void setShipping(Shipping shipping) {
					this.shipping = shipping;
				}
				@OneToOne(cascade=CascadeType.ALL)
				@JoinColumn(name="userId")
				private User user;
				public User getUser() {
					return user;
				}
				public void setUser(User user) {
					this.user = user;
				}
				
				@OneToMany(mappedBy="order")
				private List<OrderItems> orderItems;
				public List<OrderItems> getOrderItems() {
					return orderItems;
				}
				public void setOrderItems(List<OrderItems> orderItems) {
					this.orderItems = orderItems;
				}
}
