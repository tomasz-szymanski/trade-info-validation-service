package com.cs.trade.validators;

import com.cs.trade.info.TradeInfo;
import com.cs.trade.validation.ValidationResult;

import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.Month;
import java.time.temporal.TemporalField;
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
public class ValidationStrategyAll implements ValidationStrategy {
    @Override
    public ValidationResult validate(TradeInfo tradeInfo) {


        return null;
    }

    boolean isValueDateBeforeTradeDate(TradeInfo tradeInfo){
        Objects.requireNonNull(tradeInfo, "TradeInfo cannot be null");
        return tradeInfo.getValueDate().before(tradeInfo.getTradeDate());
    }

    boolean isValueDateOnWeekend(Date valueDate){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYY-MM-DD");
        LocalDate date = LocalDate.parse(simpleDateFormat.format(valueDate));
        return DayOfWeek.SUNDAY.equals(date.getDayOfWeek()) || DayOfWeek.SATURDAY.equals(date.getDayOfWeek());
    }

    boolean isBankHoliday(Date valueDate){

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-mm-dd");
        LocalDate date = LocalDate.parse(simpleDateFormat.format(valueDate));

        boolean isFirstOfJanuary = Month.JANUARY.equals(date.getMonth()) && date.getDayOfMonth() == 1;

        boolean isMarinLutherKingDay =
                Month.JANUARY.equals(date.getMonth()) &&
                        DayOfWeek.MONDAY.equals(date.getDayOfWeek()) &&
                    date.get(WeekFields.of(Locale.US).weekOfMonth()) == 3;

        return isFirstOfJanuary || isMarinLutherKingDay;
    }

}
