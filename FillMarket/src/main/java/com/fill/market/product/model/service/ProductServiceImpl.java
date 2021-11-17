package com.fill.market.product.model.service;

import java.util.List;
import java.util.Map;

import com.fill.market.product.model.vo.Attachment;
import com.fill.market.product.model.vo.Product;

public class ProductServiceImpl implements ProductService {

	@Override
	public List<Map<String, String>> selectProductList(int cPage, int numPerPage) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectProductTotalContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertProduct(Product product, List<Attachment> attachList) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Product selectOneProduct(int productNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Attachment> selectAttachmentList(int productNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product updateView(int productNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateProduct(Product product, List<Attachment> attachList) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteProduct(int productNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteFile(int attNo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
