package com.fill.market.admin.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fill.market.admin.model.vo.PAttachment;
import com.fill.market.admin.model.vo.Product;

@Repository
public class AdminDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	public List<Map<String, String>> selectProductList(int cPage, int numPerPage) {
		
		RowBounds rows = new RowBounds((cPage - 1) * numPerPage, numPerPage);

		return sqlSession.selectList("adminSQL.selectProductList", null, rows);
	}

	public int selectProductTotalContents() {
		
		return sqlSession.selectOne("adminSQL.selectProductTotalContents");
	}

	public int insertBoard(Product product) {
		
		return sqlSession.insert("adminSQL.insertProduct", product);
	}

	public int insertAttachment(PAttachment a) {
		
		return sqlSession.insert("adminSQL.insertPAttachment", a);
	}

	public Product selectOneProduct(int pno) {
		
		return sqlSession.selectOne("adminSQL.selectOneProduct", pno);
	}

	public List<PAttachment> selectPAttachment(int pno) {
		
		return sqlSession.selectList("adminSQL.selectListAttch", pno);
	}

	public int deleteFile(int attNo) {
		
		return sqlSession.delete("adminSQL.deleteFile", attNo);
	}

	public int updateProduct(Product originPro) {
		
		return sqlSession.update("adminSQL.updateProduct", originPro);
	}

	public int deleteAttachment(int pno) {
		
		return sqlSession.delete("adminSQL.deleteAttachment", pno);
	}

	public int updateAttachment(PAttachment a) {
		// TODO Auto-generated method stub
		return sqlSession.insert("adminSQL.updateAttachment", a);
	}

	public int deleteProduct(int pno) {
		
		return sqlSession.delete("adminSQL.deleteProdcut", pno);
	}

}
