package com.cs.trade.validators;

import org.junit.Assert;
import org.junit.Test;

import javax.validation.constraints.AssertTrue;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import static org.junit.Assert.*;

public class ValidationStrategyAllTest {

    @Test
    public void isBankHoliday() throws ParseException {
        ValidationStrategyAll strategyAll = new ValidationStrategyAll();
        SimpleDateFormat sdf = new SimpleDateFormat("YYYY-mm-dd");
        Date date = sdf.parse("2018-01-15");
        Assert.assertTrue(strategyAll.isBankHoliday(date));
    }
}