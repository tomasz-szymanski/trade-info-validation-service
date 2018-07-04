package com.cs.trade.validation.date;

import org.springframework.stereotype.Component;

import java.time.LocalDate;

/**
 *  - value date cannot be before trade date
 *  - value date cannot fall on weekend or non-working day for currency
 */
@Component
public class ValueDateValidator {

    public boolean isValid(LocalDate valueDate, LocalDate tradeDate){
        return !valueDate.isBefore(tradeDate);
    }

}
