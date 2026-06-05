package com.kdw_2.Proj_0605;

public class MyMain2 {

	public static void main(String[] args) {
		
//		Level myVar = Level.Medium;
//		System.out.println(myVar);
//		
//		switch(myVar) {
//		case Low:
//			System.out.println("low 커피 로스팅 주문");
//			break;
//		case Medium:
//			System.out.println("Medium 커피 로스팅 주문");
//			break;
//		case High:
//			System.out.println("High 커피 로스팅 주문");
//			break;
//		}
//		System.out.println("=========");
//		
//		for(Level MyVar2 : Level.values()) {
//			System.out.println(MyVar2);
//		}
		
		System.out.println("=========");
		
		Level2 v = Level2.MEDIUM;
		System.out.println(v);
		
		System.out.println("=========");
		
		for(Level2 v2 : Level2.values()) {
			System.out.println(v2 + ": " + v2.getDescription());
		}
		
	}
	
}