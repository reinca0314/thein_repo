package com.kdw_5.Proj_0605;

class Student {

	// 이름, 점수
	private String name;
	private int score;

	// 생성자
	public Student(String name, int score) {
		this.name = name;
		this.score = score;
	}

	// 게터
	public String getName() {
		return name;
	}

	public int getScore() {
		return score;
	}

}