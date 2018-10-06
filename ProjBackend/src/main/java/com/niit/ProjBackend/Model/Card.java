package com.niit.ProjBackend.Model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Card {
			
			@Id
			private String username;
			private double cardNumber;
			private double expiration;
			private double cvv;
			public String getUsername() {
				return username;
			}
			public void setUsername(String username) {
				this.username = username;
			}
			public double getCardNumber() {
				return cardNumber;
			}
			public void setCardNumber(double cardNumber) {
				this.cardNumber = cardNumber;
			}
			
			
			public double getExpiration() {
				return expiration;
			}
			public void setExpiration(double expiration) {
				this.expiration = expiration;
			}
			public double getCvv() {
				return cvv;
			}
			public void setCvv(double cvv) {
				this.cvv = cvv;
			}
			
}
