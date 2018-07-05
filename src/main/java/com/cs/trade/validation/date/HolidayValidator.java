package com.cs.trade.validation.date;

import de.jollyday.HolidayCalendar;
import de.jollyday.HolidayManager;
import org.springframework.stereotype.Component;

import java.time.DayOfWeek;
import java.time.LocalDate;

/**
 * - value date cannot fall on weekend or non-working day for currency
 */
@Component
public class HolidayValidator {

	private static final String EURO = "EUR";
	private static final String USD = "USD";

    private boolean isValueDateOnWeekend(LocalDate date) {
        return DayOfWeek.SUNDAY.equals(date.getDayOfWeek()) || DayOfWeek.SATURDAY.equals(date.getDayOfWeek());
    }

	/**
	 * This method checks if passed date is holiday or not for specific currency. Currently supported are USD and EUR.
	 * For EURO German Holiday Calendar is used. This is simplification and assumption, since EURO is used in many cuntries.
	 * @param date date to be validated for holiday
	 * @param currency String with currency abbreviation ISO-4217 standard
	 * @return true when holiday otherwise false
	 */
    private boolean isHolidayForCurrency(LocalDate date, String currency) {
		HolidayManager manager;
		if(EURO.equals(currency)){
			manager = HolidayManager.getInstance(HolidayCalendar.GERMANY);
		}else if (USD.equals(currency)){
			manager = HolidayManager.getInstance(HolidayCalendar.UNITED_STATES);
		}else{
			manager = HolidayManager.getInstance();
		}

        return manager.isHoliday(date);
    }


    public boolean isValid(LocalDate date, String currency) {
        return !isValueDateOnWeekend(date) && !isHolidayForCurrency(date, currency);
    }

}
