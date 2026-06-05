package com.kdw_3.Proj_0605;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class MyMain3 {

	public static void main(String[] args) {
		
		LocalDate mylocalDate = LocalDate.now();
		System.out.println(mylocalDate);
		
		LocalTime mylocalTime = LocalTime.now();
		System.out.println(mylocalTime);
		
		LocalDateTime myDateTime = LocalDateTime.now();
		System.out.println("날짜 시간: " + myDateTime);
		
		DateTimeFormatter myFormat = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
		
		String str = myDateTime.format(myFormat);
		System.out.println(str);
	}
}
