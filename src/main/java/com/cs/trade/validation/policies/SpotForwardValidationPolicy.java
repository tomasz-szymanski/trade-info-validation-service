package com.cs.trade.validation.policies;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cs.trade.info.TradeInfo;
import com.cs.trade.validation.date.HolidayValidator;
import com.cs.trade.validation.date.ValueDateValidator;
import com.cs.trade.validation.result.ValidationResult;

@Component
public class SpotForwardValidationPolicy {

	private final HolidayValidator holidayValidator;
	private final ValueDateValidator valueDateValidator;

	@Autowired
	public SpotForwardValidationPolicy(HolidayValidator holidayValidator, ValueDateValidator valueDateValidator) {
		this.holidayValidator = holidayValidator;
		this.valueDateValidator = valueDateValidator;
	}

	public ValidationResult validate(TradeInfo tradeInfo) {

		ValidationResult result = new ValidationResult();

		String currencyFrom = tradeInfo.getCcyPair().substring(0, 3);
		String currencyTo = tradeInfo.getCcyPair().substring(3, 6);

		boolean valueDateValid = valueDateValidator.isValid(tradeInfo.getValueDate(), tradeInfo.getTradeDate());
		if(!valueDateValid){
			result.addMessage("ValueDate is not valid. It is before TradeDate");
		}

		boolean valueDateNoHolidayFrom = holidayValidator.isValid(tradeInfo.getValueDate(), currencyFrom);
		if(!valueDateNoHolidayFrom){
			result.addMessage("ValueDate is not valid. It is weekend or holiday for currencyFrom");
		}

		boolean valueDateNoHolidayTo = holidayValidator.isValid(tradeInfo.getValueDate(), currencyTo);
		if(!valueDateNoHolidayTo){
			result.addMessage("ValueDate is not valid. It is weekend or holiday for currencyTo");
		}

		result.setValid(valueDateValid && valueDateNoHolidayFrom && valueDateNoHolidayTo);

		return result;
	}

}
