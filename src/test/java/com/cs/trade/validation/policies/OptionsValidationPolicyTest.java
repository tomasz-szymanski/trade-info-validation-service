package com.cs.trade.validation.policies;

import com.cs.trade.info.TradeInfoOption;
import com.cs.trade.validation.options.style.OptionsStyleValidator;
import com.cs.trade.validation.result.ValidationResult;
import org.assertj.core.util.Lists;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;

import java.time.LocalDate;
import java.util.List;

import static org.junit.Assert.*;

public class OptionsValidationPolicyTest {

    private OptionsValidationPolicy policy;
    private OptionsStyleValidator validator;
    private TradeInfoOption option;

    @Before
    public void setUp()  {
        validator = Mockito.mock(OptionsStyleValidator.class);
        policy = new OptionsValidationPolicy(validator);
        option = new TradeInfoOption();
        option.setStyle("AMERICAN");
        option.setDeliveryDate(LocalDate.parse("2018-02-01"));
        option.setExpiryDate(LocalDate.parse("2018-01-05"));
        option.setPremiumDate(LocalDate.parse("2018-01-02"));

        option.setTradeDate(LocalDate.parse("2018-01-01"));
        option.setExcerciseStartDate(LocalDate.parse("2018-01-02"));

    }

    @Test
    public void testIsValidShouldReturnTrue() {
        Mockito.when(validator.isValid(Mockito.anyString())).thenReturn(true);
        ValidationResult validate = policy.validate(option);
        assertNotNull(validate);
        assertTrue(validate.isValid());
        assertTrue(validate.getMessages().isEmpty());
    }

    @Test
    public void testIsValidShouldReturnFalse() {
        Mockito.when(validator.isValid(Mockito.anyString())).thenReturn(false);
        ValidationResult validate = policy.validate(option);
        assertNotNull(validate);
        assertFalse(validate.isValid());
        assertFalse(validate.getMessages().isEmpty());

        List<String> messages = Lists.newArrayList("Style is not valid: AMERICAN");
        for (String message : validate.getMessages()) {
            assertTrue(messages.contains(message));
        }
    }

    @Test
    public void testIsValidShouldReturnFalseForExerciseStartDate() {
        option.setTradeDate(LocalDate.parse("2019-01-05"));
        Mockito.when(validator.isValid(Mockito.anyString())).thenReturn(true);
        ValidationResult validate = policy.validate(option);
        assertNotNull(validate);
        assertFalse(validate.isValid());
        assertFalse(validate.getMessages().isEmpty());

        List<String> messages =
                Lists.newArrayList("American style option not valid: exerciseStartDate,has to be after the trade date but before the expiry date");
        for (String message : validate.getMessages()) {
            assertTrue(messages.contains(message));
        }
    }
}