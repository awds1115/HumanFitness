package com.human.fit;

public class Fitsearch {
	private String num;
	private String name;
	private String kcal;
	private String carbohydrate;
	private String protein;
	private String fat;
	private String sugars;
	private String na;
	private String cholesterol;
	private String saturated_fatty_acids;
	private String transfat;
	
	public Fitsearch() {
	}

	public Fitsearch(String num, String name, String kcal, String carbohydrate, String protein, String fat,
			String sugars, String na, String cholesterol, String saturated_fatty_acids, String transfat) {
		this.num = num;
		this.name = name;
		this.kcal = kcal;
		this.carbohydrate = carbohydrate;
		this.protein = protein;
		this.fat = fat;
		this.sugars = sugars;
		this.na = na;
		this.cholesterol = cholesterol;
		this.saturated_fatty_acids = saturated_fatty_acids;
		this.transfat = transfat;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKcal() {
		return kcal;
	}

	public void setKcal(String kcal) {
		this.kcal = kcal;
	}

	public String getCarbohydrate() {
		return carbohydrate;
	}

	public void setCarbohydrate(String carbohydrate) {
		this.carbohydrate = carbohydrate;
	}

	public String getProtein() {
		return protein;
	}

	public void setProtein(String protein) {
		this.protein = protein;
	}

	public String getFat() {
		return fat;
	}

	public void setFat(String fat) {
		this.fat = fat;
	}

	public String getSugars() {
		return sugars;
	}

	public void setSugars(String sugars) {
		this.sugars = sugars;
	}

	public String getNa() {
		return na;
	}

	public void setNa(String na) {
		this.na = na;
	}

	public String getCholesterol() {
		return cholesterol;
	}

	public void setCholesterol(String cholesterol) {
		this.cholesterol = cholesterol;
	}

	public String getSaturated_fatty_acids() {
		return saturated_fatty_acids;
	}

	public void setSaturated_fatty_acids(String saturated_fatty_acids) {
		this.saturated_fatty_acids = saturated_fatty_acids;
	}

	public String getTransfat() {
		return transfat;
	}

	public void setTransfat(String transfat) {
		this.transfat = transfat;
	}
	
	@Override
	public String toString() {
		return "Fitsearch [num=" + num + ", name=" + name + ", kcal=" + kcal
				+ ", carbohydrate=" + carbohydrate
				+ ", protein=" + protein + ", fat=" + fat + ", sugars=" + sugars
				+ ", na=" + na + ", cholesterol=" + cholesterol
				+ ", saturated_fatty_acids=" + saturated_fatty_acids
				+ ", transfat=" + transfat + "]";
	}
}
