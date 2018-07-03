package com.cs.trade.validators;

import com.cs.trade.info.TradeInfo;
import com.cs.trade.validation.ValidationResult;

public interface ValidationStrategy {
    ValidationResult validate(TradeInfo tradeInfo);
}
