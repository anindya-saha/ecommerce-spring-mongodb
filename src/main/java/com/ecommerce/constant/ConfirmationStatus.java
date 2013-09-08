package com.ecommerce.constant;

public enum ConfirmationStatus {
	  WAITING(0),  CONFIRMED(1),  REJECTED(2);
	  
	  private final int status;
	  
	  private ConfirmationStatus(int status) {
	    this.status = status;
	  }
	  
	  public int getConfirmation() {
	    return this.status;
	  }
	}