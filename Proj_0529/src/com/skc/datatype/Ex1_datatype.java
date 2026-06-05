package com.skc.datatype;

public class Ex1_datatype {

	public static void main(String[] args) {
		
		int myIntNum = 5;  				// 4byte (32bit)
		float myFloatNum = 5.99f;
		char meLetter = 'D';
		boolean myBool = true;
		double myDouble = 20.00d;		// 8byte (64bit)
		String myText = "Hello";
		
		System.out.println(
				"자동 타입캐스팅\n ----------\n byte-> short-> char-> int-> long-> float->double");
		System.out.println(
				"수동 타입캐스팅\n ----------\n double-> float-> long-> int-> char-> short->byte");
		
		// int  --> double 
		double resultDouble = myIntNum;
		System.out.println(
				"int타입의 값을 double타입의 변수에 대입\n ----------\n " + resultDouble);
		
		// double --> int
		int resultInt = (int) myDouble;
		System.out.println(
				"double타입의 값을 int타입의 변수에 대입하려면\n ***타입캐스팅이 필요함***\n ----------\n " + resultInt);
		
	}

}
