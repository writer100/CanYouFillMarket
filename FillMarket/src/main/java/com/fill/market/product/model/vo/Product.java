package com.fill.market.product.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Component
public class Product implements Serializable {
	
	private static final long serialVersionUID = 49890L;
	private int pNo;
	private int cNo;
	private String pName;
	private int pPrice;
	private String piinfo;
	private String fPprec;
	private Date pEnroll;
	private int pStock;
	private int pSell;
		
	
}
