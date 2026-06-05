package com.kdw_5.Proj_0604;

class TossPay extends Payment {
	@Override
	void pay(int amount) {
		System.out.println("토스페이 결제: " + amount);
	}
	
}