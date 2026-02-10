package com.crm.dto;

public class Product {

	private int pid;
	private String pname;
	private double price;
	private int quantity;
	private String url;

	public Product() {

	}

	public Product(int pid, String pname, double price, int quantity, String url) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.price = price;
		this.quantity = quantity;
		this.url = url;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
	    this.pid = pid;
	}


	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	
}
