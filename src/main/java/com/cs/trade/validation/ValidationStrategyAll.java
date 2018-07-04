package com.cs.trade.validation;

import com.cs.trade.info.TradeInfo;
import com.cs.trade.validation.currency.CurrencyValidator;
import com.cs.trade.validation.customer.SupportedCustomerValidator;
import com.cs.trade.validation.date.HolidayValidator;
import com.cs.trade.validation.date.ValueDateValidator;
import de.jollyday.HolidayCalendar;
import de.jollyday.HolidayManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.Month;
import java.time.temporal.WeekFields;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;

/**
 * Requirements for strategy:
 * - value date cannot be before trade date
 * - value date cannot fall on weekend or non-working day for currency
 * - if the counterparty is one of the supported ones
 * - validate currencies if they are valid ISO codes (ISO 4217)
 */
@Service
public class ValidationStrategyAll implements ValidationStrategy {

    private final SupportedCustomerValidator customerValidator;
    private final CurrencyValidator currencyValidator;
    private final HolidayValidator holidayValidator;
    private final ValueDateValidator valueDateValidator;



    @Autowired
    public ValidationStrategyAll(SupportedCustomerValidator customerValidator, CurrencyValidator currencyValidator,
                                 HolidayValidator holidayValidator, ValueDateValidator valueDateValidator) {
        this.customerValidator = customerValidator;
        this.currencyValidator = currencyValidator;
        this.holidayValidator = holidayValidator;
        this.valueDateValidator = valueDateValidator;
    }

    @Override
    public ValidationResult validate(TradeInfo tradeInfo) {

		ValidationResult result = new ValidationResult();
		result.setInfo(tradeInfo);
        boolean customerValid = customerValidator.isSupported(tradeInfo.getCustomer());

        String currencyFrom = tradeInfo.getCcyPair().substring(0, 3);
        String currencyTo = tradeInfo.getCcyPair().substring(3, 6);

        boolean currencyIsValid = currencyValidator.isValid(currencyFrom) && currencyValidator.isValid(currencyTo);

        boolean valueDateValid = valueDateValidator.isValid(tradeInfo.getValueDate(), tradeInfo.getTradeDate());
        boolean valueDateNoHoliday = holidayValidator.isValid(tradeInfo.getValueDate(), currencyFrom);

        result.setValid(customerValid && currencyIsValid && valueDateValid && valueDateNoHoliday);

		return result;
    }


}
