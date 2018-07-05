package com.cs.trade.validation.options;

import java.time.LocalDate;

/**
 * Expiry date and premium date shall be before delivery date
 */
public class OptionsDateValidator {

    /**
     * Validate dates from Options trade information.
     *
     * @param expiryDate   date to be validated
     * @param premiumDate  date to be validated
     * @param deliveryDate date to be validated
     * @return true expiry date and premium date before delivery date, otherwise false
     */
    public boolean isValid(LocalDate expiryDate, LocalDate premiumDate, LocalDate deliveryDate) {
        return expiryDate.isBefore(deliveryDate) && premiumDate.isBefore(deliveryDate);
    }

}
