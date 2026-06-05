package com.kdw.Proj_0604;

public class MyMain1 {

	public static void main(String[] args) {
		
		Account acc = new Account("110-445-531004", "고동우 ", 100000);
		
		System.out.println(acc.exportPrint());
		
		acc.deposit(50000);
		System.out.println(acc.exportPrint());
		
		acc.withdraw(20000);
		System.out.println(depositResult);
		String depostiResult = acc.deposit(8000);
		
		
		acc.withdraw(10000);
		
	}
}
