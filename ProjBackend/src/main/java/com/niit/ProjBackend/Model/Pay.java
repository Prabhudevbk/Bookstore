package com.niit.ProjBackend.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Pay {

		@Id
		private String PayId;
		private String PayMethod;
		private String PayStatus;
		public String getPayId() {
			return PayId;
		}
		public void setPayId(String payId) {
			PayId = payId;
		}
		public String getPayMethod() {
			return PayMethod;
		}
		public void setPayMethod(String payMethod) {
			PayMethod = payMethod;
		}
		public String getPayStatus() {
			return PayStatus;
		}
		public void setPayStatus(String payStatus) {
			PayStatus = payStatus;
		}
}
