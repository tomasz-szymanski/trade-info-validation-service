package com.cs.trade.validation.options;

import java.time.LocalDate;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class AmericanOptionValidatorTest {

	private AmericanOptionValidator validator;

	@Before
	public void setUp() {
		validator = new AmericanOptionValidator();
	}

	@Test
	public void isValidShouldReturnTrue() {
		LocalDate exerciseDate = LocalDate.parse("2018-01-02");
		LocalDate tradeDate = LocalDate.parse("2018-01-01");
		LocalDate expiryDate = LocalDate.parse("2018-02-01");
		Assert.assertTrue(validator.isValid(exerciseDate, tradeDate, expiryDate));
	}

	@Test
	public void isValidShouldReturnFalseTradeDate() {
		LocalDate exerciseDate = LocalDate.parse("2018-01-02");
		LocalDate tradeDate = LocalDate.parse("2018-02-06");
		LocalDate expiryDate = LocalDate.parse("2018-02-01");
		Assert.assertFalse(validator.isValid(exerciseDate, tradeDate, expiryDate));
	}

	@Test
	public void isValidShouldReturnFalseExpiryDate() {
		LocalDate exerciseDate = LocalDate.parse("2018-03-02");
		LocalDate tradeDate = LocalDate.parse("2018-01-01");
		LocalDate expiryDate = LocalDate.parse("2018-02-01");
		Assert.assertFalse(validator.isValid(exerciseDate, tradeDate, expiryDate));
	}

}