package com.cs.trade.validation.options;

import java.time.LocalDate;

/**
 * - American option style will have in addition the excerciseStartDate, which has to be after the trade date but before the expiry date
 */
public class AmericanOptionValidator {

    /**
     * Valid if exerciseStartDate is after the trade date but before the expiry date
     *
     * @param exerciseStartDate date to validate
     * @param tradeDate         date to validate
     * @param expiryDate        date to validate
     * @return true when if exerciseStartDate is after the trade date but before the expiry date, otherwise false
     */
    public boolean isValid(LocalDate exerciseStartDate, LocalDate tradeDate, LocalDate expiryDate) {
        return exerciseStartDate.isAfter(tradeDate) && exerciseStartDate.isBefore(expiryDate);
    }

}
