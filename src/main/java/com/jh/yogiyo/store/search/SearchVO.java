package com.jh.yogiyo.store.search;

import java.sql.Date;

import lombok.Data;

@Data
public class SearchVO {
	private long num;
	private String searchName;
	private long hit;
	private Date regDate;
	private String address;
}
