package com.monnami;

public class ProductDTO {
	
	//===========================product=====================================
	private int product_id;
	private String product_name;
	private String product_mainList;
	private String product_subList;
	private String product_cost;
	
	public String getProduct_cost() {
		return product_cost;
	}
	public void setProduct_cost(String product_cost) {
		this.product_cost = product_cost;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_mainList() {
		return product_mainList;
	}
	public void setProduct_mainList(String product_mainList) {
		this.product_mainList = product_mainList;
	}
	public String getProduct_subList() {
		return product_subList;
	}
	public void setProduct_subList(String product_subList) {
		this.product_subList = product_subList;
	}
	
	//===========================productSub=====================================
	private String productSub_color;
	private String productSub_color1;
	private String productSub_color2;
	private String productSub_color3;
	private String productSub_color4;
	private String productSub_color5;
	private String productSub_stock;


	public String getProductSub_color() {
		return productSub_color;
	}
	public void setProductSub_color(String productSub_color) {
		this.productSub_color = productSub_color;
	}
	public String getProductSub_color1() {
		return productSub_color1;
	}
	public void setProductSub_color1(String productSub_color1) {
		this.productSub_color1 = productSub_color1;
	}
	public String getProductSub_color2() {
		return productSub_color2;
	}
	public void setProductSub_color2(String productSub_color2) {
		this.productSub_color2 = productSub_color2;
	}
	public String getProductSub_color3() {
		return productSub_color3;
	}
	public void setProductSub_color3(String productSub_color3) {
		this.productSub_color3 = productSub_color3;
	}
	public String getProductSub_color4() {
		return productSub_color4;
	}
	public void setProductSub_color4(String productSub_color4) {
		this.productSub_color4 = productSub_color4;
	}
	public String getProductSub_color5() {
		return productSub_color5;
	}
	public void setProductSub_color5(String productSub_color5) {
		this.productSub_color5 = productSub_color5;
	}
	public String getProductSub_stock() {
		return productSub_stock;
	}
	public void setProductSub_stock(String productSub_stock) {
		this.productSub_stock = productSub_stock;
	}

	//===========================productSub2======================================
	private String productSub2_locate;
	private String productSub2_saveFileName;
	private String productSub2_saveFileNameSub;
	private String productSub2_saveFileNameContent;
	private String productSub2_originalFileName;

	public String getProductSub2_saveFileNameSub() {
		return productSub2_saveFileNameSub;
	}
	public void setProductSub2_saveFileNameSub(String productSub2_saveFileNameSub) {
		this.productSub2_saveFileNameSub = productSub2_saveFileNameSub;
	}
	public String getProductSub2_saveFileNameContent() {
		return productSub2_saveFileNameContent;
	}
	public void setProductSub2_saveFileNameContent(
			String productSub2_saveFileNameContent) {
		this.productSub2_saveFileNameContent = productSub2_saveFileNameContent;
	}
	public String getProductSub2_locate() {
		return productSub2_locate;
	}
	public void setProductSub2_locate(String productSub2_locate) {
		this.productSub2_locate = productSub2_locate;
	}
	public String getProductSub2_saveFileName() {
		return productSub2_saveFileName;
	}
	public void setProductSub2_saveFileName(String productSub2_saveFileName) {
		this.productSub2_saveFileName = productSub2_saveFileName;
	}
	public String getProductSub2_originalFileName() {
		return productSub2_originalFileName;
	}
	public void setProductSub2_originalFileName(String productSub2_originalFileName) {
		this.productSub2_originalFileName = productSub2_originalFileName;
	}

	//========================장바구니==========================//
	
	private int basket_id;
	private int member_id;

	public int getBasket_id() {
		return basket_id;
	}
	public void setBasket_id(int basket_id) {
		this.basket_id = basket_id;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
