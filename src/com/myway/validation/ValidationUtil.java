package com.myway.validation;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

public class ValidationUtil {
	public static void setMessage(Model model, BindingResult br) {
		if (br.hasErrors()) {
			List<FieldError> fieldErrors = br.getFieldErrors();
			for (FieldError fieldError : fieldErrors) {
				model.addAttribute(fieldError.getField() + "Error", fieldError.getDefaultMessage());
			}
		}
	}
}
