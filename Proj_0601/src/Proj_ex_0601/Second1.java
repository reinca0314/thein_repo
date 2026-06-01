package Proj_ex_0601;

public class Second1 {

	public static void main(String[] args) {
		
		Myobj myobj_1 = new Myobj();
		Myobj myobj_2 = new Myobj();
		Myobj myobj_3 = new Myobj();

		String str = "kdw";
		int num = 5;

		System.out.println(myobj_1.x);
		System.out.println(myobj_1.name);
		System.out.println(myobj_2.x);
		System.out.println(myobj_2.name);
		System.out.println(myobj_3.x);
		myobj_3.x = 10;
		myobj_3.name = "이쁜선경이";
		System.out.println(myobj_3.x);
		System.out.println(myobj_3.name);
		System.out.println(myobj_2.x);
		System.out.println(myobj_2.x);
		
		myobj_1.meMethod();
		myobj_2.meMethod();
		myobj_3.meMethod();
		
		myobj_1.meMethod(1);
		myobj_2.meMethod(2);
		myobj_3.meMethod(3);
		
	}
	
}
