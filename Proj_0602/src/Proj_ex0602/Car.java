package Proj_ex_0601;

import java.util.Random; 

public class Car {
	// 1. 클래스의 속성(필드) 정의
    public String brand;
    public String model;
    
    // 2. 생성자: 외부에서 new Car("현대", "아반떼") 할 때 호출됨
    public Car(String brand, String model) {
        this.brand = brand;   
        this.model = model;
    }

    // 3. 랜덤 모델을 반환하는 함수 (메서드)
    public static String getRandomModel(String brand) {
        Random random = new Random();

        String[] hyundaiModels = {"아반떼", "소나타", "그랜저", "아이오닉5", "투싼"};
        String[] kiaModels = {"K5", "스포티지", "쏘렌토", "카니발", "EV6"};

        // 입력값이 "기아" 또는 "kia"일 때
        if (brand.equalsIgnoreCase("기아") || brand.equalsIgnoreCase("kia")) {
            int randomIndex = random.nextInt(kiaModels.length);
            return "기아 " + kiaModels[randomIndex];
        } 
        // 입력값이 "현대" 또는 "hyundai"일 때
        else if (brand.equalsIgnoreCase("현대") || brand.equalsIgnoreCase("hyundai")) {
            int randomIndex = random.nextInt(hyundaiModels.length);
            return "현대 " + hyundaiModels[randomIndex];
        } 
        else {
            return "지정되지 않은 브랜드입니다. (현대/기아 중 입력)";
        }
    }
}