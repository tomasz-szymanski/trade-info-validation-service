package com.cs.trade.validation.policies;

import com.cs.trade.info.TradeInfo;
import com.cs.trade.validation.currency.CurrencyValidator;
import com.cs.trade.validation.customer.SupportedCustomerValidator;
import com.cs.trade.validation.result.ValidationResult;
import org.assertj.core.util.Lists;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;

import java.util.List;

import static org.junit.Assert.*;

public class CommonValidationPolicyTest {

    private CommonValidationPolicy policy;
    private SupportedCustomerValidator customerValidator;
    private CurrencyValidator currencyValidator;

    @Before
    public void setUp() {
        customerValidator = Mockito.mock(SupportedCustomerValidator.class);
        currencyValidator = Mockito.mock(CurrencyValidator.class);
        policy = new CommonValidationPolicy(customerValidator, currencyValidator);
    }

    @Test
    public void validateShouldReturnValidResult() {
        Mockito.when(customerValidator.isSupported(Mockito.anyString())).thenReturn(true);
        Mockito.when(currencyValidator.isValid(Mockito.anyString())).thenReturn(true);

        TradeInfo tradeInfo = new TradeInfo();
        tradeInfo.setCcyPair("EURUSD");
        tradeInfo.setCustomer("PLUTO1");
        ValidationResult validationResult = policy.validate(tradeInfo);
        assertNotNull(validationResult);
        assertTrue(validationResult.isValid());
        assertEquals(0, validationResult.getMessages().size());
    }

    @Test
    public void validateShouldReturnInValidResultForCurrency() {
        Mockito.when(customerValidator.isSupported(Mockito.anyString())).thenReturn(true);
        Mockito.when(currencyValidator.isValid(Mockito.anyString())).thenReturn(false);

        TradeInfo tradeInfo = new TradeInfo();
        tradeInfo.setCcyPair("ABCDEF");
        tradeInfo.setCustomer("PLUTO1");
        ValidationResult validationResult = policy.validate(tradeInfo);
        assertNotNull(validationResult);
        assertFalse(validationResult.isValid());
        assertEquals(2, validationResult.getMessages().size());

        List<String> messages =
                Lists.newArrayList("CurrencyFrom is not valid: ABC", "CurrencyTo is not valid: DEF");

        validateMessages(validationResult, messages);
    }

    @Test
    public void validateShouldReturnInValidResultForCustomer() {
        Mockito.when(customerValidator.isSupported(Mockito.anyString())).thenReturn(false);
        Mockito.when(currencyValidator.isValid(Mockito.anyString())).thenReturn(true);

        TradeInfo tradeInfo = new TradeInfo();
        tradeInfo.setCcyPair("EURUSD");
        tradeInfo.setCustomer("PLUT01");
        ValidationResult validationResult = policy.validate(tradeInfo);
        assertNotNull(validationResult);
        assertFalse(validationResult.isValid());
        assertEquals(1, validationResult.getMessages().size());

        List<String> messages =
                Lists.newArrayList("Not supported customer");

        validateMessages(validationResult, messages);
    }

    @Test
    public void validateShouldReturnInValidForBoth() {
        Mockito.when(customerValidator.isSupported(Mockito.anyString())).thenReturn(false);
        Mockito.when(currencyValidator.isValid(Mockito.anyString())).thenReturn(false);

        TradeInfo tradeInfo = new TradeInfo();
        tradeInfo.setCcyPair("EURUSD");
        tradeInfo.setCustomer("PLUT01");
        ValidationResult validationResult = policy.validate(tradeInfo);
        assertNotNull(validationResult);
        assertFalse(validationResult.isValid());
        assertEquals(3, validationResult.getMessages().size());

        List<String> messages =
                Lists.newArrayList("Not supported customer", "CurrencyFrom is not valid: EUR",
                        "CurrencyTo is not valid: USD");

        validateMessages(validationResult, messages);
    }

    private void validateMessages(ValidationResult validationResult, List<String> messages) {
        for (String message : validationResult.getMessages()) {
            assertTrue(messages.contains(message));
        }
    }
}