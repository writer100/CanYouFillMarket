package com.fill.market.product.model.service;

import java.util.List;
import java.util.Map;

import com.fill.market.product.model.vo.PAttachment;
import com.fill.market.product.model.vo.Product;

public interface ProductService {
	
	List<Map<String, String>> selectProductList(int cPage, int numPerPage);

	int selectProductTotalContents();

	Product selectOneProduct(int pNo);

	List<PAttachment> selectPAttachmentList(int pNo);

}
