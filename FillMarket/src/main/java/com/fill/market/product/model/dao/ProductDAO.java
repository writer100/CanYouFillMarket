package com.fill.market.product.model.dao;

import java.util.List;
import java.util.Map;

import com.fill.market.product.model.vo.Attachment;
import com.fill.market.product.model.vo.Product;

public interface ProductDAO {

	List<Map<String, String>> selectProductList(int cPage, int numPerPage);

	int selectProductTotalContents();

	int insertProduct(Product product, List<Attachment> attachList);

	Product selectOneProduct(int productNo);

	List<Attachment> selectAttachmentList(int productNo);

	Product updateView(int productNo);
	
	int updateProduct(Product product, List<Attachment> attachList);
	
	int deleteProduct(int productNo);

	int deleteFile(int attNo);	
}
