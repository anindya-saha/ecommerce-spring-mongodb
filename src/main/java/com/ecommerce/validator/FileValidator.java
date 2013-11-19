package com.ecommerce.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.ecommerce.model.UploadedFile;

public class FileValidator implements Validator{

	@Override
	public boolean supports(Class<?> arg0) {
		return false;
	}

	@Override
	public void validate(Object uploadedFile, Errors errors) {

		UploadedFile file = (UploadedFile) uploadedFile;
		
		if(file.getFile().getSize() == 0){
			errors.rejectValue("file", "Please select a file!");
		}
		
	}

}
