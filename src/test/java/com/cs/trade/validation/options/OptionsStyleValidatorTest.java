package com.cs.trade.validation.options;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;

import com.cs.trade.validation.options.style.OptionsStyleValidator;
import com.cs.trade.validation.options.style.TransactionStyle;
import com.cs.trade.validation.options.style.TransactionStyleRepository;

public class OptionsStyleValidatorTest {

	private static final String AMERICAN = "AMERICAN";
	private static final String EUROPEAN = "EUROPEAN";
	private OptionsStyleValidator validator;

	@Before
	public void setUp() {
		TransactionStyleRepository repository = Mockito.mock(TransactionStyleRepository.class);
		List<TransactionStyle> styles = new ArrayList<>();
		styles.add(new TransactionStyle(1L, AMERICAN));
		styles.add(new TransactionStyle(2L, EUROPEAN));
		Mockito.when(repository.findAll()).thenReturn(styles);
		validator = new OptionsStyleValidator(repository);
	}

	@Test
	public void isValidShouldReturnTrueForAmerican() {
		Assert.assertTrue(validator.isValid(AMERICAN));
	}

	@Test
	public void isValidShouldReturnTrueForEuropean() {
		Assert.assertTrue(validator.isValid(EUROPEAN));
	}

	@Test
	public void isValidShouldReturnFalseForOthers() {
		Assert.assertFalse(validator.isValid("PACIFIC"));
	}
}