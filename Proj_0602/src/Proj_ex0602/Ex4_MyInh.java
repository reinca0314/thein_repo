package Proj_ex0602;

public class Ex4_MyInh {

	public static void main(String[] args) {
		
		Pig pig = new Pig();
		Dog dog = new Dog();
		Cat cat = new Cat();
		
		pig.animalSound();
		dog.animalSound();
		cat.animalSound();
		
		System.out.println("==================");
	
		cat.animalColorFlag(true);
		cat.animalColorFlag(false);
	}
}
