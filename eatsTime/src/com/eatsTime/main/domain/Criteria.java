package com.eatsTime.main.domain;

public class Criteria {
   private int offset;
   private int rowCount;
   private int startPage;
   private int endPage;
   private boolean prev;
   private boolean next;
   private String sort;
   private int realEndPage;
   private String category;
   
   
   
   

   public Criteria(int page, int total, String sort, String category) {
      this(page, total);
      this.sort = sort;
      this.category = category;
   }
   
   public Criteria(int page, int total) {
   //   한 페이지에 출력되는 게시글의 개수
      rowCount = 16;
   //   한 페이지에서 나오는 페이지 버튼의 개수
      int pageCount = 5;
      
      offset = (page - 1) * rowCount;
      endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
      startPage = endPage - (pageCount - 1);
      realEndPage = (int)Math.ceil(total / (double)rowCount);
      
      prev = startPage > 1;
      next = false;
      endPage = endPage > realEndPage ? realEndPage == 0 ? 1 : realEndPage : endPage;
      next = endPage < realEndPage;
   }

   public int getOffset() {
      return offset;
   }

   public void setOffset(int offset) {
      this.offset = offset;
   }

   public int getRowCount() {
      return rowCount;
   }

   public void setRowCount(int rowCount) {
      this.rowCount = rowCount;
   }

   public int getStartPage() {
      return startPage;
   }

   public void setStartPage(int startPage) {
      this.startPage = startPage;
   }

   public int getEndPage() {
      return endPage;
   }

   public void setEndPage(int endPage) {
      this.endPage = endPage;
   }

   public boolean isPrev() {
      return prev;
   }

   public void setPrev(boolean prev) {
      this.prev = prev;
   }

   public boolean isNext() {
      return next;
   }

   public void setNext(boolean next) {
      this.next = next;
   }

   public String getSort() {
      return sort;
   }

   public void setSort(String sort) {
      this.sort = sort;
   }

   public int getRealEndPage() {
      return realEndPage;
   }

   public void setRealEndPage(int realEndPage) {
      this.realEndPage = realEndPage;
   }

   public String getCategory() {
      return category;
   }

   public void setCategory(String category) {
      this.category = category;
   }



   

}




