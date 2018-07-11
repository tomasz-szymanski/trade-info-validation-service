package com.cs.trade.validation.currency;

import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CurrencyValidator {

	private final CurrencyRepository currencyRepository;

    @Autowired
    public CurrencyValidator(CurrencyRepository currencyRepository) {
		this.currencyRepository = currencyRepository;
    }

    public boolean isValid(String currencyCode){
		Set<String> validCurrencies = currencyRepository.findAll().stream().map(Currency::getAlphaCode).filter(el -> !el.isEmpty())
			.collect(Collectors.toSet());
		return validCurrencies.contains(currencyCode);
    }

}
