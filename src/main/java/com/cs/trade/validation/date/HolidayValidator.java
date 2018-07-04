package com.cs.trade.validation.date;

import de.jollyday.HolidayManager;
import org.springframework.stereotype.Component;

import java.time.DayOfWeek;
import java.time.LocalDate;

/**
 * - value date cannot fall on weekend or non-working day for currency
 */
@Component
public class HolidayValidator {

    private boolean isValueDateOnWeekend(LocalDate date) {
        return DayOfWeek.SUNDAY.equals(date.getDayOfWeek()) || DayOfWeek.SATURDAY.equals(date.getDayOfWeek());
    }

    private boolean isHolidayForCurrency(LocalDate date, String currency) {
        HolidayManager instance = HolidayManager.getInstance();
        return instance.isHoliday(date);
    }


    public boolean isValid(LocalDate date, String currency) {
        return !isValueDateOnWeekend(date) && !isHolidayForCurrency(date, currency);
    }

}
