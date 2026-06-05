package com.kdw_5.Proj_0605;

import java.util.ArrayList;

public class MyMain5 {
	
	public static void main(String[] args) {
		
		ArrayList<String> cars;
		
		cars = new ArrayList<String>();
		System.out.println(cars + "\n갯수는: " + cars.size() + "\n");
		
		cars.add("볼보");
		cars.add("혼다");
		cars.add("포드");
		cars.add("BMW");
		System.out.println(cars + "\n갯수는: " + cars.size() + "\n");
		
		cars.add(0, "추가된 자동차");
		System.out.println(cars + "\n갯수는: " + cars.size() + "\n");
		
		System.out.println(cars.get(0));
		System.out.println(cars + "\n갯수는: " + cars.size() + "\n");
		
		cars.set(1, "XM3");
		System.out.println(cars + "\n갯수는: " + cars.size() + "\n");

		cars.remove(4);
		System.out.println(cars + "\n갯수는: " + cars.size() + "\n");
		
		cars.clear();
		System.out.println(cars + "\n갯수는: " + cars.size() + "\n");
	}

}
