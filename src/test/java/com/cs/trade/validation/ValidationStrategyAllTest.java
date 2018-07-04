//package com.cs.trade.validation;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.junit4.SpringRunner;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//public class ValidationStrategyAllTest {
//
//    @Autowired
//    private ValidationStrategy strategyAll;
//
//    @Test
//    public void isBankHolidayShouldReturnTrueForMarinLutherDay() {
//		LocalDate date = LocalDate.parse("2018-01-15");
//        Assert.assertTrue(strategyAll.isBankHoliday(date));
//    }
//
//    @Test
//    public void isBankHolidayShouldReturnTrueForNewYear() {
//		LocalDate date = LocalDate.parse("2018-01-01");
//        Assert.assertTrue(strategyAll.isBankHoliday(date));
//    }
//
//	@Test
//	public void isBankHolidayShouldReturnFalse() {
//		LocalDate date = LocalDate.parse("2018-01-16");
//		Assert.assertFalse(strategyAll.isBankHoliday(date));
//	}
//
//    @Test
//    public void isBankHolidayUsingJolly() {
//        LocalDate date = LocalDate.parse("2015-01-15");
//        Assert.assertTrue(strategyAll.isBankHolidayUsingJolly(date));
//    }
//}