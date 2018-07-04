package com.cs.trade.validation.currency;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;
import java.util.stream.Collectors;

@Service
public class CurrencyValidator {

    private final Set<String> validCurrencies;

    @Autowired
    public CurrencyValidator(CurrencyRepository currencyRepository) {
        validCurrencies = currencyRepository.findAll().stream().map(Currency::getAlphaCode).filter(el->!el.isEmpty())
                        .collect(Collectors.toSet());
    }

    public boolean isValid(String currencyCode){
        return validCurrencies.contains(currencyCode);
    }

}
