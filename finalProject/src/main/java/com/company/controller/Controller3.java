package com.company.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.company.abandonment.common.AbandonmentAPI;
import com.company.common.FileRenamePolicy;
import com.company.product.service.ProductService;
import com.company.product.service.ProductVO;

@Controller
public class Controller3 {

	@Autowired
	AbandonmentAPI abanAPI;
	@Autowired
	ProductService productService;

	// 유기동물 API
	@RequestMapping("/getAban")
	public void getAban(HttpServletResponse response, String pageNo, String upr_cd) throws IOException {
		response.setContentType("text/xml; charset=UTF-8");
		response.getWriter().print(abanAPI.getAban(pageNo, upr_cd));
	}

	// 유기동물 LIST
	@RequestMapping("/getAbanList")
	public String getAbanList() {
		return "abandonment/getabandonment";
	}

	// 유기동물 API 시도
	@RequestMapping("/getAbanSido")
	public void getAbanSido(HttpServletResponse response) throws IOException {
		response.setContentType("text/xml; charset=UTF-8");
		response.getWriter().print(abanAPI.getAbanSido());
	}

	// 유기동물 상세보기
	@RequestMapping("/getSearchAban")
	public String getSearchAban(String desertionNo, Model model, String pageNo, String upr_cd) {
		model.addAttribute("desertionNo", desertionNo);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("upr_cd", upr_cd);
		return "abandonment/getSearchAban";
	}

	@RequestMapping("/getSearchProduct")
	public String getSearchProduct(ProductVO vo, Model model) {
		model.addAttribute("product", productService.getSearchProduct(vo));
		return "product/getSearchProduct";
	}

	@GetMapping("/insertProduct")
	public String insertProductForm() {
		return "product/insertProduct";
	}

	@PostMapping("/insertProduct")
	public String insertProduct(ProductVO vo, HttpServletRequest request) throws IllegalStateException, IOException {
		System.out.println(vo);
		// 첨부파일처리
		MultipartFile image = vo.getUploadFile();
		MultipartFile t_image = vo.getT_uploadFile();
		String path =  request.getSession().getServletContext().getRealPath("/resources/images");
		System.out.println("경로: " +path);
		if (image != null && !image.isEmpty() && image.getSize() > 0) {
			String filename = image.getOriginalFilename();
			//파일명 중복체크 -> rename
			File rename = FileRenamePolicy.rename(new File(path, filename));
			// 업로드된 파일명
			//rename.getName()				
			//파일명을 읽어내는게 getName()
			//임시폴더에서 업로드 폴더로 파일이동
			image.transferTo(rename); // transferTo:이동한다는뜻 괄호안에 업로드 위치를 정함)
			vo.setImage(rename.getName());
		}
		
		if (t_image != null && !t_image.isEmpty() && t_image.getSize() > 0) {
			String filename = t_image.getOriginalFilename();
			//파일명 중복체크 -> rename
			File rename = FileRenamePolicy.rename(new File(path, filename));
			// 업로드된 파일명
			//rename.getName()				
			//파일명을 읽어내는게 getName()
			//임시폴더에서 업로드 폴더로 파일이동
			t_image.transferTo(rename); // transferTo:이동한다는뜻 괄호안에 업로드 위치를 정함)
			vo.setT_image(rename.getName());
		}
//			String path="resources/images";

		productService.insertProduct(vo);
		return "redirect:/getSearchProduct";
	}

}
