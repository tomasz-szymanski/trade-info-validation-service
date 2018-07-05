package com.cs.trade.validation.policies;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cs.trade.info.TradeInfoOption;
import com.cs.trade.validation.options.AmericanOptionValidator;
import com.cs.trade.validation.options.OptionsDateValidator;
import com.cs.trade.validation.options.style.OptionsStyleValidator;
import com.cs.trade.validation.result.ValidationResult;

@Component
public class OptionsValidationPolicy {

	private static final String AMERICAN_TRANS_STYLE = "AMERICAN";
	private final OptionsStyleValidator styleValidator;

	@Autowired
	public OptionsValidationPolicy(OptionsStyleValidator styleValidator) {
		this.styleValidator = styleValidator;
	}

	public ValidationResult validate(TradeInfoOption tradeInfoOption) {

		ValidationResult result = new ValidationResult();
//		result.setInfo(tradeInfo);

		boolean isStyleValid = styleValidator.isValid(tradeInfoOption.getStyle());
		if (!isStyleValid) {
			result.addMessage("Style is not valid: " + tradeInfoOption.getStyle());
		}

		OptionsDateValidator dateValidator = new OptionsDateValidator();
		boolean dateValid =
			dateValidator.isValid(tradeInfoOption.getExpiryDate(), tradeInfoOption.getPremiumDate(), tradeInfoOption.getDeliveryDate());

		if (!dateValid) {
			result.addMessage("Date not valid: Expiry date and premium date shall be before delivery date");
		}

		boolean americanStyleValid = true;
		if (AMERICAN_TRANS_STYLE.equals(tradeInfoOption.getStyle())) {
			AmericanOptionValidator americanValidator = new AmericanOptionValidator();
			americanStyleValid =
				americanValidator.isValid(
					tradeInfoOption.getExcerciseStartDate(),
					tradeInfoOption.getTradeDate(),
					tradeInfoOption.getExpiryDate());
			if (!americanStyleValid) {
				result.addMessage(
					"American style option not valid: exerciseStartDate,has to be after the trade date but before the expiry date");
			}
		}

		boolean isValid = isStyleValid && dateValid && americanStyleValid;
		result.setValid(isValid);
		return result;
	}
}
