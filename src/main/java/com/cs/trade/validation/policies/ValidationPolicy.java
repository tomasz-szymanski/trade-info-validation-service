package com.cs.trade.validation.policies;

import com.cs.trade.info.TradeInfoOption;
import com.cs.trade.validation.result.ValidationResult;

public interface ValidationPolicy {
	ValidationResult validate(TradeInfoOption tradeInfo);
}
