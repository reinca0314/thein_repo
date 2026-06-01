package Proj_ex_0601;

public class Ex3 {
	
	public static void main(String[] args) {
    	
//        int num1;
//        int num2;
//        String strResult;
		
        int result;
		
        Cal cal = new Cal();
        
//        // 덧셈
//        cal.addCal(100,200);
//        // 뺄셈
//        cal.subCal(100,200);
//        // 곱셈
//        cal.mulCal(100,200);
//        // 나눗셈
//        cal.divCal(100,200);
//        // 나머지
//        cal.remCal(100,200);
        
        System.out.println("================");
        
        result = cal.addCal2(100,200);
        System.out.println("덧셈: " + result);
        
        result = cal.subCal2(100,200);
        System.out.println("뺄셈: " + result);
        
        result = cal.mulCal2(100,200);
        System.out.println("곱셈: " + result);
        
        result = cal.divCal2(100,200);
        System.out.println("나눗셈: " + result);
        
        result = cal.remCal2(100,200);
        System.out.println("나머지: " + result);
        
		}
    }