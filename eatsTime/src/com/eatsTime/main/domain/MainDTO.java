package com.eatsTime.main.domain;

import com.eatsTime.product.domain.ProductDTO;

public class MainDTO {
	
	 public Long productId;
	   private boolean productCategory;
	   private String productName;
	   private int productPrice;
	   private String productDate;
	   private String productExpirationDate;
	   private int productStock;
	   private String productAddress;
	   private String productAddressDetail;
	   private String fileName;
	   private String memberIdentification;
	   private String memberName;
	   private String saleContent;
	   
	   public MainDTO() {;}
	   
	public Long getProductId() {
		return productId;
	}
	public void setProductId(Long productId) {
		this.productId = productId;
	}
	public boolean isProductCategory() {
		return productCategory;
	}
	public void setProductCategory(boolean productCategory) {
		this.productCategory = productCategory;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductDate() {
		return productDate;
	}
	public void setProductDate(String productDate) {
		this.productDate = productDate;
	}
	public String getProductExpirationDate() {
		return productExpirationDate;
	}
	public void setProductExpirationDate(String productExpirationDate) {
		this.productExpirationDate = productExpirationDate;
	}
	public int getProductStock() {
		return productStock;
	}
	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}
	public String getProductAddress() {
		return productAddress;
	}
	public void setProductAddress(String productAddress) {
		this.productAddress = productAddress;
	}
	public String getProductAddressDetail() {
		return productAddressDetail;
	}
	public void setProductAddressDetail(String productAddressDetail) {
		this.productAddressDetail = productAddressDetail;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getMemberIdentification() {
		return memberIdentification;
	}
	public void setMemberIdentification(String memberIdentification) {
		this.memberIdentification = memberIdentification;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getSaleContent() {
		return saleContent;
	}
	public void setSaleContent(String saleContent) {
		this.saleContent = saleContent;
	}
	@Override
	public String toString() {
		return "ProductDTO [productId=" + productId + ", productCategory=" + productCategory + ", productName="
				+ productName + ", productPrice=" + productPrice + ", productDate=" + productDate
				+ ", productExpirationDate=" + productExpirationDate + ", productStock=" + productStock
				+ ", productAddress=" + productAddress + ", productAddressDetail=" + productAddressDetail + ", fileName="
				+ fileName + ", memberIdentification=" + memberIdentification + ", memberName=" + memberName
				+ ", saleContent=" + saleContent + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((productId == null) ? 0 : productId.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProductDTO other = (ProductDTO) obj;
		if (productId == null) {
			if (other.productId != null)
				return false;
		} else if (!productId.equals(other.productId))
			return false;
		return true;
	}
	   
	 

	   
	   
	}