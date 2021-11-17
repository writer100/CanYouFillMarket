package com.fill.market.product.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fill.market.product.model.vo.PAttachment;
import com.fill.market.product.model.vo.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<Map<String, String>> selectProductList(int cPage, int numPerPage) {
		RowBounds rows = new RowBounds((cPage - 1 )* numPerPage, numPerPage);
		
		return sqlSession.selectList("productSQL.selectProductList", null, rows);
	}

	@Override
	public int selectProductTotalContents() {
		
		return sqlSession.selectOne("productSQL.selectProductTotalContents");
	}


	@Override
	public Product selectOneProduct(int pNo) {
		
		return sqlSession.selectOne("productSQL.selectOneProduct", pNo);
	}

	@Override
	public List<PAttachment> selectPAttachmentList(int pNo) {
		
		return sqlSession.selectList("productSQL.selectPAttachmentList", pNo);
	}

}
