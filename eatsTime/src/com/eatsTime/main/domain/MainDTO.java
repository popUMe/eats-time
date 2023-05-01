package com.eatsTime.main.domain;

import com.eatsTime.product.domain.ProductDTO;

public class MainDTO {
	
	   public Long productId;
	   private String productName;
	   private int productPrice;
	   private String fileName;
	   private String memberIdentification;
	   private String saleContent;
	   private String memberGrade;
	   
	   public MainDTO() {;}
	   
	   public Long getProductId() {
			return productId;
		}
		public void setProductId(Long productId) {
			this.productId = productId;
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
		public String getSaleContent() {
			return saleContent;
		}
		public void setSaleContent(String saleContent) {
			this.saleContent = saleContent;
		}
		public String getMemberGrade() {
			return memberGrade;
		}

		public void setMemberGrade(String memberGrade) {
			this.memberGrade = memberGrade;
		}
		@Override
		public String toString() {
		    return "ProductDTO [productId=" + productId + ", productName="
		            + productName + ", productPrice=" + productPrice  + ", fileName=" + fileName + ", memberIdentification=" + memberIdentification
		            + ", memberGrade=" + memberGrade + ", saleContent=" + saleContent + "]";
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
		

		

		
