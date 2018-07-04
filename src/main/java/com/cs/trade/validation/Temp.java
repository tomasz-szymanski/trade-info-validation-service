package com.cs.trade.validation;

import de.jollyday.HolidayCalendar;
import de.jollyday.HolidayManager;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.Month;
import java.time.temporal.WeekFields;
import java.util.Locale;
import java.util.Objects;

public class Temp {


    boolean isValueDateBeforeTradeDate(LocalDate valueDate, LocalDate tradeDate){
        Objects.requireNonNull(valueDate, "TradeInfo cannot be null");
        Objects.requireNonNull(tradeDate, "TradeInfo cannot be null");
        return valueDate.isBefore(tradeDate);
    }

    boolean isValueDateOnWeekend(LocalDate valueDate){
        return DayOfWeek.SUNDAY.equals(valueDate.getDayOfWeek()) || DayOfWeek.SATURDAY.equals(valueDate.getDayOfWeek());
    }

    boolean isBankHoliday(LocalDate date){

        boolean isFirstOfJanuary = Month.JANUARY.equals(date.getMonth()) && date.getDayOfMonth() == 1;

        //3rd Monday of January
        boolean isMarinLutherKingDay =
                Month.JANUARY.equals(date.getMonth()) &&
                        DayOfWeek.MONDAY.equals(date.getDayOfWeek()) &&
                        date.get(WeekFields.of(Locale.US).weekOfMonth()) == 3;
        //last Monday of May
        boolean isMemorialDay =
                Month.MAY.equals(date.getMonth()) &&
                        DayOfWeek.MONDAY.equals(date.getDayOfWeek()) &&
                        (date.getDayOfMonth() > (31 - 7));

        boolean isIndependenceDay = Month.JULY.equals(date.getMonth()) && date.getDayOfMonth() == 4;

        //1st Monday in September
        boolean isLaborDay = Month.SEPTEMBER.equals(date.getMonth()) && DayOfWeek.MONDAY.equals(date.getDayOfWeek()) &&
                date.getDayOfMonth() <= 7;


        return isFirstOfJanuary || isMarinLutherKingDay || isMemorialDay || isIndependenceDay;
    }

    boolean isBankHolidayUsingJolly(LocalDate date){
        HolidayManager manager = HolidayManager.getInstance(HolidayCalendar.UNITED_STATES);
        return manager.isHoliday(date);
    }
}
