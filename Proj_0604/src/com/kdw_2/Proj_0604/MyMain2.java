package com.kdw_2.Proj_0604;

class MyMain2 {

	public static void main(String[] args) {
		
		System.out.println(Animal.MyName);
		
		Pig pig1 = new Pig();
		pig1.aniName = "꿀꿀이";
		pig1.aniSound = "꿀꿀";
		pig1.Eating();
		pig1.Sleeping();
		System.out.println(pig1.aniEating);
		System.out.println(pig1.aniSound);
		
		Cat cat1 = new Cat();
		cat1.aniName = "냐옹이";
		cat1.aniSound = "냐옹";
		cat1.Eating();
		cat1.Sleeping();
		System.out.println(cat1.aniName);
		System.out.println(cat1.aniSleeping);
		
		Dog dog1 = new Dog();
		dog1.aniName = "멍멍이";
		dog1.aniSound = "멍멍";
		dog1.Eating();
		dog1.Sleeping();
		System.out.println(dog1.aniEating);
		System.out.println(dog1.aniSound);
		
		Bird bird1 = new Bird();
		bird1.aniName = "짹짹이";
		bird1.aniSound = "짹짹";
		bird1.Eating();
		bird1.Sleeping();
		System.out.println(bird1.aniName);
		System.out.println(bird1.aniSleeping);
	}
	
}
