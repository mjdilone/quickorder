package com.ds.quickOrder.model;

public class SaleItem {

	private int id;
	private String name;
	private double pricePerUnit;
	private double srp;
	private String imageSource;
	private String itemDescription;
	private int category;
	
	

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPricePerUnit() {
		return pricePerUnit;
	}
	public void setPricePerUnit(double pricePerUnit) {
		this.pricePerUnit = pricePerUnit;
	}
	public double getSrp() {
		return srp;
	}
	public void setSrp(double srp) {
		this.srp = srp;
	}
	public String getImageSource() {
		return imageSource;
	}
	public void setImageSource(String imageSource) {
		this.imageSource = imageSource;
	}
	public String getItemDescription() {
		return itemDescription;
	}
	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}

	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "SaleItem [id=" + id + ", name=" + name + ", pricePerUnit=" + pricePerUnit + ", srp=" + srp
				+ ", imageSource=" + imageSource + ", itemDescription=" + itemDescription + ", category=" + category
				+ "]";
	}
}
