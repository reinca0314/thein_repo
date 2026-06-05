package Proj_ex0602;

public class Account {
		
		String accountNumber;
		String owner;
		int balance;

		public Account(String accountNumber, String owner, int balance) {
			
			this.accountNumber = accountNumber;
			this.owner = owner;
			this.balance = balance;
		}
		
		void deposit(int amount) {
			balance += amount;
			System.out.println(balance + "원 입금 완료");
		}

		void withdraw(int amount) {
			if (amount> balance) {
				System.out.println("잔액 부족");
				return;
			}
			balance = amount;
			System.out.println(amount + "원 출금 완료");
		}

		void showInfo() {
			System.out.println("원 출금 완료" + accountNumber);
			System.out.println("원 출금 완료" + owner);
			System.out.println("원 출금 완료" + balance);
		}
	}