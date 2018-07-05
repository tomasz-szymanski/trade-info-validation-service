package com.cs.trade.validation.date;

import static org.junit.Assert.*;

import java.time.LocalDate;

import org.junit.Before;
import org.junit.Test;

public class HolidayValidatorTest {

	private HolidayValidator validator;

	@Before
	public void setUp() throws Exception {
		validator = new HolidayValidator();
	}

	@Test
	public void isValidShouldReturnFalseForNewYearEUR() {
		assertFalse(validator.isValid(LocalDate.parse("2018-01-01"), "EUR"));
	}

	@Test
	public void isValidShouldReturnTrueForNewYearEUR() {
		assertTrue(validator.isValid(LocalDate.parse("2018-01-02"), "EUR"));
	}

	@Test
	public void isValidShouldReturnFalseForNewYearUSD() {
		assertFalse(validator.isValid(LocalDate.parse("2018-01-01"), "USD"));
	}

	@Test
	public void isValidShouldReturnTrueForNewYearUSD() {
		assertTrue(validator.isValid(LocalDate.parse("2018-01-02"), "USD"));
	}

	@Test
	public void isValidShouldReturnFalseForWeekendUSD() {
		assertFalse(validator.isValid(LocalDate.parse("2018-07-07"), "USD"));
	}

	@Test
	public void isValidShouldReturnFalseForWeekendEUR() {
		assertFalse(validator.isValid(LocalDate.parse("2018-07-07"), "EUR"));
	}


	@Test
	public void isValidShouldReturnFalseForEUR() {
		assertTrue(validator.isValid(LocalDate.parse("2018-07-04"), "EUR"));
	}

	@Test
	public void isValidShouldReturnFalseForIndependenceDayUS() {
		assertFalse(validator.isValid(LocalDate.parse("2018-07-04"), "USD"));
	}


}