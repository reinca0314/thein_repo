package com.kdw_6.Proj_0605;

public class MyMain6 {

	static void checkAge(int age) {
		if (age < 18) {
			throw new ArithmeticException("미성년자 안됨욤~");
		} else {
			System.out.println("성인 입장 가능");
		}
	}

	public static void main(String[] args) {

		// try~ catch
//		try {
//			int[] myNumbers = { 1, 2, 3 };
//			System.out.println(myNumbers[10]); // error!
//		} catch (Exception e) {
//			System.out.println("뭔가 문제가 생겼어\n" + e);
//		}

		// try~ catch~ finally
//		try {
//			 int[] myNumbers = {1, 2, 3};
//		      System.out.println(myNumbers[10]);
//		} catch(Exception e){
//			System.out.println("뭔가 문제가 생겼어\n" + e);
//		} finally {
//			System.out.println("try~catch가 끝남");
//		}

		// throw
//		checkAge(15);

		// 다중 Exception에서 사용순서를 꼭 지킵시다(작은거~)
//		try {
//			int[] numbers = { 1, 2, 3 };
//			System.out.println(numbers[10]); // ArrayIndexOutOfBoundsException
//			int result = 10 / 0; // ArithmeticException
//		} catch (ArrayIndexOutOfBoundsException e) {
//			System.out.println("배열 인덱스 문제야~\n" + e);
//		} catch (ArithmeticException e) {
//			System.out.println("0으로 나눌 수 없음\n" + e);
//		} catch (Exception e) {
//			System.out.println("어딘가 오류가 있음\n" + e);
//		}

	}

}
