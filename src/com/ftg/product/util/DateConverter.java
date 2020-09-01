package com.ftg.product.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.xml.bind.Binder;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.support.WebBindingInitializer;
import org.springframework.web.context.request.WebRequest;

public class DateConverter implements WebBindingInitializer {
	@Override
	public void initBinder(WebDataBinder binder, WebRequest arg1) {
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, false));
	}

}
