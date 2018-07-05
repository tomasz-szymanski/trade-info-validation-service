package com.cs.trade.validation.date;

import org.springframework.stereotype.Component;

import java.time.LocalDate;

/**
 *  Validator for valueDate of trade information:
 *  - value date cannot be before trade date
 */
@Component
public class ValueDateValidator {

	/**
	 * Validates if value date is not before trade date.
	 * @param valueDate value date of tradeInfo
	 * @param tradeDate trade date of tradeInfo
	 * @return true if valid otherwise false
	 */
    public boolean isValid(LocalDate valueDate, LocalDate tradeDate){
        return !valueDate.isBefore(tradeDate);
    }

}
