package com.kdw_5.Proj_0604;

class CardPayment extends Payment {
	@Override
	void pay(int amount) {
		System.out.println("카드 결제: " + amount);
	}
	
}
