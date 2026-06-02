package Proj_ex0602;

public class Ex8_Account {

		public static void main(String[] args) {
			
			Account acc = new Account("100-200", "성시경", 100000);
					
			acc.deposit(50000);
			
			acc.withdraw(30000);
			
			acc.showInfo();
			
		
		}
		
}
