package com.cs.trade.validation.currency;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;

import java.util.ArrayList;
import java.util.List;

public class CurrencyValidatorTest {

    private CurrencyValidator validator;

    @Before
    public void setUp() {
        CurrencyRepository repository = Mockito.mock(CurrencyRepository.class);
        List<Currency> styles = new ArrayList<>();
        styles.add(getCurrency("EUR"));
        styles.add(getCurrency("USD"));
        styles.add(getCurrency("PLN"));
        Mockito.when(repository.findAll()).thenReturn(styles);
        validator = new CurrencyValidator(repository);
    }

    private Currency getCurrency(String alpha) {
        Currency euro = new Currency();
        euro.setAlphaCode(alpha);
        return euro;
    }

    @Test
    public void isValidForPLN() {
        Assert.assertTrue(validator.isValid("PLN"));
    }

    @Test
    public void isValidForEUR() {
        Assert.assertTrue(validator.isValid("EUR"));
    }

    @Test
    public void isValidForUSD() {
        Assert.assertTrue(validator.isValid("USD"));
    }

    @Test
    public void isNotValidForXYZ() {
        Assert.assertFalse(validator.isValid("XYZ"));
    }


}