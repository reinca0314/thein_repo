package Proj_ex_0601;

import java.util.Random;

public class Ex4_Car {
	public static void main(String[] args) {
		Random random = new Random();
        
        String[] brands = {"현대", "기아"};
        
        String randomBrand = brands[random.nextInt(brands.length)];
        
        String finalCar = Car.getRandomModel(randomBrand);
        
        System.out.println("나의 차는? " + finalCar);
        
        System.out.println("---------------------------------");
        
        String result1 = Car.getRandomModel("kia");
        String result2 = Car.getRandomModel("현대");
        
        System.out.println("랜덤 결과 1: " + result1);
        System.out.println("랜덤 결과 2: " + result2);
    }
}