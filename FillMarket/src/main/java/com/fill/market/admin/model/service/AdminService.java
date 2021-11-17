package com.fill.market.admin.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fill.market.admin.model.dao.AdminDAO;
import com.fill.market.admin.model.vo.PAttachment;
import com.fill.market.admin.model.vo.Product;


@Service
public class AdminService {

	@Autowired
	AdminDAO adminDAO;

	public List<Map<String, String>> selectProductList(int cPage, int numPerPage) {

		return adminDAO.selectProductList(cPage, numPerPage);
	}

	public int selectProductTotalContents() {

		return adminDAO.selectProductTotalContents();
	}

	public int insertProduct(Product product, List<PAttachment> attachList) {
		int productResult = adminDAO.insertBoard(product);

		// 첨부파일이 boardNo를 알 수 있는 방법
		// 1. BoardDAO를 통해서 가장 최근에 추가된 게시글 번호 가져오기 ( O )
		// 2. mapper 파일을 통해서 가장 최근에 추가된 게시글 번호 가져오기

		if (attachList.size() > 0) {
			// 첨부파일이 있을때만 실행해라

			for (PAttachment a : attachList) {
				int attachResult = adminDAO.insertAttachment(a);
				if (attachResult == 0)
					System.out.println("실패ㅠ");

			}
		}
		return productResult;

	}

	public Product selectOneProduct(int pno) {

		return adminDAO.selectOneProduct(pno);
	}

	public List<PAttachment> selectAttachment(int pno) {
		// TODO Auto-generated method stub
		return adminDAO.selectPAttachment(pno);
	}

	public int deleteFile(int attNo) {

		return adminDAO.deleteFile(attNo);
	}

	public int updateProduct(Product originPro, List<PAttachment> attachList) {

		int totalResult = 0;

		List<PAttachment> originList = adminDAO.selectPAttachment(originPro.getPno());

		totalResult = adminDAO.updateProduct(originPro);
		
		if (totalResult == 0)
			System.out.println("실패ㅠㅠ");

		if (originList.size() > 0) {
			// 기존 첨부파일이 DB에 있다면
			totalResult = adminDAO.deleteAttachment(originPro.getPno());

			if (totalResult == 0)
				System.out.println("첨부파일 삭제 실패ㅠㅠ");
		}
		if (attachList.size() > 0) {

			for (PAttachment a : attachList) {

				totalResult = adminDAO.updateAttachment(a);

				if (totalResult == 0)
					System.out.println("게시글 첨부파일 수정 실패ㅠㅠ");
			}
		}

		return totalResult;
	}

	public int deleteProdcut(int pno) {
		
		return adminDAO.deleteProduct(pno);
	}

<<<<<<< HEAD
	
	
	
	
	
	
	// ----------------------------------- 사용자 관리 ------------------------------------------- //
	public List<Map<String, String>> selectUserList(int cPage, int numPerPage) {

		return adminDAO.selectUserList(cPage, numPerPage);
	}

	public int selectUserTotalContents() {
		
		return adminDAO.selectUserTotalContents();
	}

=======
>>>>>>> branch 'Hwan' of https://github.com/writer100/CanYouFillMarket.git
}
