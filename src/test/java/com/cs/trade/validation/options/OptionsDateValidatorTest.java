package com.cs.trade.validation.options;

import java.time.LocalDate;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class OptionsDateValidatorTest {

	private OptionsDateValidator validator;

	@Before
	public void setUp() {
		validator = new OptionsDateValidator();
	}

	@Test
	public void isValidShouldReturnTrueBothDatesBefore() {
		LocalDate expiryDate = LocalDate.parse("2018-01-02");
		LocalDate premiumDate = LocalDate.parse("2018-01-06");
		LocalDate deliveryDate = LocalDate.parse("2018-02-01");
		Assert.assertTrue(validator.isValid(expiryDate, premiumDate, deliveryDate));
	}

	@Test
	public void isValidShouldReturnTrueBothDatesBeforeAndEqual() {
		LocalDate expiryDate = LocalDate.parse("2018-01-02");
		LocalDate premiumDate = LocalDate.parse("2018-01-02");
		LocalDate deliveryDate = LocalDate.parse("2018-02-01");
		Assert.assertTrue(validator.isValid(expiryDate, premiumDate, deliveryDate));
	}

	@Test
	public void isValidShouldReturnFalseOneDateAfter() {
		LocalDate expiryDate = LocalDate.parse("2018-01-02");
		LocalDate premiumDate = LocalDate.parse("2018-02-06");
		LocalDate deliveryDate = LocalDate.parse("2018-02-01");
		Assert.assertFalse(validator.isValid(expiryDate, premiumDate, deliveryDate));
	}

	@Test
	public void isValidShouldReturnFalseOtherDateAfter() {
		LocalDate expiryDate = LocalDate.parse("2018-02-02");
		LocalDate premiumDate = LocalDate.parse("2018-01-06");
		LocalDate deliveryDate = LocalDate.parse("2018-02-01");
		Assert.assertFalse(validator.isValid(expiryDate, premiumDate, deliveryDate));
	}

	@Test
	public void isValidShouldReturnFalseBothDatesAfter() {
		LocalDate expiryDate = LocalDate.parse("2018-02-02");
		LocalDate premiumDate = LocalDate.parse("2018-02-06");
		LocalDate deliveryDate = LocalDate.parse("2018-01-01");
		Assert.assertFalse(validator.isValid(expiryDate, premiumDate, deliveryDate));
	}

	@Test
	public void isValidShouldReturnFalseAllEqual() {
		LocalDate expiryDate = LocalDate.parse("2018-02-02");
		LocalDate premiumDate = LocalDate.parse("2018-02-02");
		LocalDate deliveryDate = LocalDate.parse("2018-02-02");
		Assert.assertFalse(validator.isValid(expiryDate, premiumDate, deliveryDate));
	}

}