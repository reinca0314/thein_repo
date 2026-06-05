package com.skc.scan;

import java.util.Scanner;

public class ScannerEx{

	public static void main(String[] args) {
		
		System.out.println("=== 두 숫자의 합을 구하기 ===");
		
		// import단축키: ctrl + shift + o
		Scanner sc = new Scanner(System.in);
		System.out.println("첫번째 숫자: ");
		int n = sc.nextInt();
		System.out.println("두번째 숫자: ");
		int m = sc.nextInt();
		System.out.println("두 숫자의 합: ");
		System.out.println(n + m);
	}

}
