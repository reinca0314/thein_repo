package com.kdw_2.Proj_0604;

class Animal {
	static String MyName = "=== 동물 프로그램 ===";
	String aniName = "동물";
	String aniSound = "으아아아";
	String aniEating;
	String aniSleeping;
	int aniAge;
	
	void Eating(){
		aniEating = "동물이 먹이를 먹습니다.";
	}
	
	void Sleeping(){
		aniSleeping = "동물이 잠을 잡니다.";
	}
	
	void aniAging(int age) {
		aniAge += age;
	}
	
}
