package com.cs.trade.validation.date;

import java.time.LocalDate;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class ValueDateValidatorTest {

	private ValueDateValidator validator;

	@Before
	public void setUp(){
		validator = new ValueDateValidator();
	}

	@Test
	public void isValidShouldReturnTrue() {
		LocalDate valueDate = LocalDate.parse("2018-01-12");
		LocalDate tradeDate = LocalDate.parse("2018-01-11");
		Assert.assertTrue(validator.isValid(valueDate, tradeDate));
	}

	@Test
	public void isValid() {
		LocalDate valueDate = LocalDate.parse("2018-01-01");
		LocalDate tradeDate = LocalDate.parse("2018-01-05");
		Assert.assertFalse(validator.isValid(valueDate, tradeDate));
	}
}