package com.cs.trade.validation.options.style;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TRANSACTION_STYLE")
public class TransactionStyle {

	@Id
	private Long id;
	private String name;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public TransactionStyle() {
//		for JPA
	}

	public TransactionStyle(Long id, String name) {
		this.id = id;
		this.name = name;
	}


}
