package Proj_ex0602;

public class Cat extends Animal {

	public void animalSound() {
		System.out.println("냐옹");	
	}

	public void animalColorFlag(Boolean flag) {
		
		if (flag) {
			super.animalColor();
		} else {
		System.out.println("치즈");		
		}
	
	}
	
}
