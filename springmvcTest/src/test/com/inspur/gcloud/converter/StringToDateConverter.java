package com.inspur.gcloud.converter;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class StringToDateConverter implements Converter<String,Date>{
	
	private String datePattern;
	
	public StringToDateConverter(String datePattern) {
		this.datePattern = datePattern;
		System.out.println("instantiating .... converter with pattern:*"+datePattern);
	}
	
	public Date convert(String source) {
		try {
			DateFormat dateFormat = new SimpleDateFormat(datePattern);
			dateFormat.setLenient(false);
			return dateFormat.parse(source);
		} catch (Exception e) {
			throw new IllegalArgumentException("Invalid date format.Please use this pattern\""+datePattern+"\"");
		}
	}
}
