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
		
		HttpSession session = req.getSession();
		String root = req.getServletContext().getRealPath("/") + "upload/";
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
		
//		productVO.setMemberId(memberId);
		productVO.setMemberId(1L);
		productVO.setProductCategory(productCategory);
		productVO.setProductName(productName);
		productVO.setProductPrice(productPrice);
		productVO.setProductExpirationDate(productExpirationDate);
		productVO.setProductStock(productStock);
		productVO.setProductAddress(productAddress);
		productVO.setProductAddressDetail(productAddressDetail);
		
		productDAO.insert(productVO);
		
		fileVO.setProductId(productDAO.selectCurrentSequence());
		
		Enumeration<String> inputTypeFileNames = multipartRequest.getFileNames();
		System.out.println("들어옴");
		System.out.println(inputTypeFileNames);
		
		String inputTypeFileName = inputTypeFileNames.nextElement();
		System.out.println("----------------------------------");
		System.out.println(inputTypeFileName);
		String fileSystemName = multipartRequest.getFilesystemName(inputTypeFileName);
				
		fileVO.setFileName(fileSystemName);
		fileVO.setFileOriginalName(multipartRequest.getOriginalFileName(inputTypeFileName));
		path = Path.of(root + fileSystemName);
		fileVO.setFileSize(String.valueOf(Files.size(path)));
		
		fileDAO.insert(fileVO);
		
		/*
		 * while(inputTypeFileNames.hasMoreElements()) { String inputTypeFileName =
		 * inputTypeFileNames.nextElement(); String fileSystemName =
		 * multipartRequest.getFilesystemName(inputTypeFileName); if(fileSystemName ==
		 * null) {continue;} fileVO.setFileName(fileSystemName);
		 * fileVO.setFileOriginalName(multipartRequest.getOriginalFileName(
		 * inputTypeFileName)); path = Path.of(root + fileSystemName);
		 * fileVO.setFileSize(String.valueOf(Files.size(path)));
		 * 
		 * System.out.println(fileVO.getFileOriginalName()); System.out.println("들어옴");
		 * fileDAO.insert(fileVO); }
		 */
		
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/ProductUploadListOk.product");

		return result;
	}

}
