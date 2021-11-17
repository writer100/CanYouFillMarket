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
public class PAttachment implements Serializable{
		
	private static final long serialVersionUID = 49895L;
	
	private int paNo;
	private int pNo;
	private String originalName;
	private String changeName;
	private Date uploadDate;
	private String status;
	
}