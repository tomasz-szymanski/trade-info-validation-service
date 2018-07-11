package com.cs.trade.validation.options.style;

import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * - the style can be either American or European
 * - American option style will have in addition the excerciseStartDate, which has to be after the trade date but before the expiry date
 * - expiry date and premium date shall be before delivery date
 */
@Component
public class OptionsStyleValidator {

	private final TransactionStyleRepository repository;

	@Autowired
	public OptionsStyleValidator(TransactionStyleRepository repository) {
		this.repository = repository;
	}

	public boolean isValid(String transactionStyle) {
		final Set<String> supportedTransaction = repository.findAll().stream().map(TransactionStyle::getName).collect
			(Collectors.toSet());
		return supportedTransaction.contains(transactionStyle);
	}

}
