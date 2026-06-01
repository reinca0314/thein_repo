package Proj_ex_0601;

public class Myobj {

	int x = 5;
	String name = "선경";
	
	public void meMethod() {
		System.out.println("meMethod 실행됨");
	}
	
	public void meMethod(int i) {
		
		// 문제 : 오브젝트의 이름을 전달받아서 출력.
		// ex1
		System.out.println("meMethod 실행됨");
		System.out.println(i);
		
		// ex2
		System.out.println("myobj_" + i);
		
		// ex3
		System.out.println("myobj_" + i);
		
		// ex4
		System.out.println("myobj_" + i);
		
		// ex5
		System.out.println("myobj_" + i);
	}
}
