package com.ecommerce.constant;

public enum ConfirmationStatus {
	  WAITING("WAITING"),  CONFIRMED("CONFIRMED"),  REJECTED("REJECTED");
	  
	  private final String status;
	  
	  private ConfirmationStatus(String status) {
	    this.status = status;
	  }
	  
	  public String getConfirmationStatus() {
	    return this.status;
	  }
	}