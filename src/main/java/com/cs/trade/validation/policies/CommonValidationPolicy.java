package com.cs.trade.validation.policies;

import com.cs.trade.info.TradeInfo;
import com.cs.trade.validation.result.ValidationResult;
import com.cs.trade.validation.currency.CurrencyValidator;
import com.cs.trade.validation.customer.SupportedCustomerValidator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Requirements for policy:
 * - value date cannot be before trade date
 * - value date cannot fall on weekend or non-working day for currency
 * - if the counterparty is one of the supported ones
 * - validate currencies if they are valid ISO codes (ISO 4217)
 */
@Component
public class CommonValidationPolicy {

    private final SupportedCustomerValidator customerValidator;
    private final CurrencyValidator currencyValidator;

    @Autowired
    public CommonValidationPolicy(SupportedCustomerValidator customerValidator, CurrencyValidator currencyValidator) {
        this.customerValidator = customerValidator;
        this.currencyValidator = currencyValidator;
    }

    public ValidationResult validate(TradeInfo tradeInfo) {

		ValidationResult result = new ValidationResult();

        boolean customerValid = customerValidator.isSupported(tradeInfo.getCustomer());
		if(!customerValid){
			result.addMessage("Not supported customer");
		}

        String currencyFrom = tradeInfo.getCcyPair().substring(0, 3);
        String currencyTo = tradeInfo.getCcyPair().substring(3, 6);

        boolean currencyFromIsValid = currencyValidator.isValid(currencyFrom);
        if(!currencyFromIsValid){
        	result.addMessage("CurrencyFrom is not valid: " + currencyFrom);
		}
        boolean currencyToIsValid = currencyValidator.isValid(currencyTo);
		if(!currencyToIsValid){
			result.addMessage("CurrencyTo is not valid: " + currencyTo);
		}

        result.setValid(customerValid && currencyFromIsValid && currencyToIsValid);

		return result;
    }


}
