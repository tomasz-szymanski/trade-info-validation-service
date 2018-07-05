package com.cs.trade.validation.policies;

import com.cs.trade.info.TradeInfo;
import com.cs.trade.validation.date.HolidayValidator;
import com.cs.trade.validation.date.ValueDateValidator;
import com.cs.trade.validation.result.ValidationResult;
import org.assertj.core.util.Lists;
import org.junit.Before;
import org.junit.Test;

import java.time.LocalDate;
import java.util.List;

import static org.junit.Assert.*;

public class SpotForwardValidationPolicyTest {

    private SpotForwardValidationPolicy policy;

    @Before
    public void setUp() {
        policy = new SpotForwardValidationPolicy(new HolidayValidator(), new ValueDateValidator());
    }

    @Test
    public void testIsValidShouldReturnTrue() {
        TradeInfo tradeInfo = new TradeInfo();
        tradeInfo.setCcyPair("EURUSD");
        tradeInfo.setValueDate(LocalDate.parse("2018-02-01"));
        tradeInfo.setTradeDate(LocalDate.parse("2018-01-01"));
        ValidationResult validate = policy.validate(tradeInfo);
        assertNotNull(validate);
        assertTrue(validate.isValid());
        assertTrue(validate.getMessages().isEmpty());
    }

    @Test
    public void testIsValidShouldReturnFalseForValueDate() {
        TradeInfo tradeInfo = new TradeInfo();
        tradeInfo.setCcyPair("EURUSD");
        tradeInfo.setValueDate(LocalDate.parse("2018-01-03"));
        tradeInfo.setTradeDate(LocalDate.parse("2018-02-01"));
        ValidationResult validate = policy.validate(tradeInfo);
        assertNotNull(validate);
        assertFalse(validate.isValid());
        assertEquals(1, validate.getMessages().size());

        List<String> messages =
                Lists.newArrayList("ValueDate is not valid. It is before TradeDate");
        validateMessage(validate, messages);
    }

    @Test
    public void testIsValidShouldReturnFalseForHoliday() {
        TradeInfo tradeInfo = new TradeInfo();
        tradeInfo.setCcyPair("EURUSD");
        tradeInfo.setValueDate(LocalDate.parse("2018-07-04"));
        tradeInfo.setTradeDate(LocalDate.parse("2018-02-01"));
        ValidationResult validate = policy.validate(tradeInfo);
        assertNotNull(validate);
        assertFalse(validate.isValid());
        assertEquals(1, validate.getMessages().size());

        List<String> messages =
                Lists.newArrayList("ValueDate is not valid. It is weekend or holiday for currencyTo");
        validateMessage(validate, messages);
    }

    @Test
    public void testIsValidShouldReturnFalseForWeekend() {
        TradeInfo tradeInfo = new TradeInfo();
        tradeInfo.setCcyPair("EURUSD");
        tradeInfo.setValueDate(LocalDate.parse("2018-07-08"));
        tradeInfo.setTradeDate(LocalDate.parse("2018-02-01"));
        ValidationResult validate = policy.validate(tradeInfo);
        assertNotNull(validate);
        assertFalse(validate.isValid());
        assertEquals(2, validate.getMessages().size());

        List<String> messages =
                Lists.newArrayList("ValueDate is not valid. It is weekend or holiday for currencyFrom",
                        "ValueDate is not valid. It is weekend or holiday for currencyTo"
                );
        validateMessage(validate, messages);
    }

    private void validateMessage(ValidationResult validate, List<String> messages) {
        for (String message : validate.getMessages()) {
            assertTrue(messages.contains(message));
        }
    }


}