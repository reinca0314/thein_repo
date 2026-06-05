package com.kdw.Proj_0604;

public class Account {
	
	// 변수 선언
	String accountNumber;
	String owner;
	int balance;
	
	// 생성자 구현
	Account(String accountNumber, String owner, int balance) {
		
		// 초기화
		this.accountNumber = accountNumber;
		this.owner = owner;
		this.balance = balance;
	}
	String exportPrint() {
		String result = "고객님의 잔액은 "+balance+ "원 입니다.";
		return result;
	}
	
	void deposit(int amount) {
//		this.balance = this.balance + amount;
		this.balance += amount;
		return ("고객님의 현재 잔액은 " + balance + );
	}
	
}
