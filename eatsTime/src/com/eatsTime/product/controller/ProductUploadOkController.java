package com.eatsTime.product.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.file.dao.FileDAO;
import com.eatsTime.file.domain.FileVO;
import com.eatsTime.member.domain.MemberVO;
import com.eatsTime.product.dao.ProductDAO;
import com.eatsTime.product.domain.ProductVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProductUploadOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ProductDAO productDAO = new ProductDAO(); 
		ProductVO productVO = new ProductVO();
		FileVO fileVO = new FileVO();
		Result result = new Result();
		FileDAO fileDAO = new FileDAO();
		Path path = null;
		MemberVO memberVO = new MemberVO();
		
		HttpSession session = req.getSession();
		memberVO = (MemberVO) session.getAttribute("LOGIN_INFO");
		Long memberId = memberVO.getMemberId();

		String root = req.getServletContext().getRealPath("/") + "upload/";
		System.out.println(req.getServletContext());
		System.out.println(req.getServletContext().getRealPath("/"));
		System.out.println(root);
		int fileSize = 1024 * 1024 * 20;
		
		MultipartRequest multipartRequest = new MultipartRequest(req, root, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
//		Long memberId = Long.valueOf(multipartRequest.getParameter("memberId"));
		boolean productCategory = Boolean.parseBoolean(multipartRequest.getParameter("productCategory"));
		String productName = multipartRequest.getParameter("productName");
		int productPrice = Integer.parseInt(multipartRequest.getParameter("productPrice"));
		String productExpirationDate = multipartRequest.getParameter("productExpirationDate");
		int productStock = Integer.parseInt(multipartRequest.getParameter("productStock"));
		String productAddress = multipartRequest.getParameter("productAddress");
		String productAddressDetail = multipartRequest.getParameter("productAddressDetail");
		
		productVO.setMemberId(memberId);
		productVO.setProductCategory(productCategory);
		productVO.setProductName(productName);
		productVO.setProductPrice(productPrice);
		productVO.setProductExpirationDate(productExpirationDate);
		productVO.setProductStock(productStock);
		productVO.setProductAddress(productAddress);
		productVO.setProductAddressDetail(productAddressDetail);
		
		productDAO.insert(productVO);
		
		// ProductId 가져오기
		fileVO.setProductId(productDAO.selectCurrentSequence());
		
		// FineName 부분 
		String fileName = multipartRequest.getFilesystemName("fildUpload");
		// OriginalFileName 부분
		String originalFileName = multipartRequest.getOriginalFileName("fildUpload");
		// path 부분 정리(그래야 FileSize 구할 수 있음)
		path = Path.of(root + fileName);
		
		fileVO.setFileName(fileName);
		fileVO.setFileOriginalName(originalFileName);
		fileVO.setFileSize(String.valueOf(Files.size(path)));
		
		System.out.println(String.valueOf(Files.size(path)));
		
		fileDAO.insert(fileVO);
		
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/productUploadList.product");

		return result;
	}

}
