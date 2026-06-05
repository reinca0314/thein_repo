package com.kdw_2.Proj_0605;

//enum Level {
//	LOW("Low level"),
//	MEDIUM("Medium level"),
//	HIGH("High level");
//	
//}

enum Level2 {
	LOW("Low level"),
	MEDIUM("Medium level"),
	HIGH("High level");

	  // Field (variable) to store the description text
	  private String description;

	  // Constructor (runs once for each constant above)
	  private Level2(String description) {
	    this.description = description;
	  }

	  // Getter method to read the description
	  public String getDescription() {
	    return description;
	  }

}
