package com.cs.trade.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cs.trade.info.TradeInfo;
import com.cs.trade.validation.ValidationResult;
import com.cs.trade.validation.ValidationStrategy;
import com.cs.trade.validation.ValidationStrategyAll;

@RestController
public class ValidationController {

	private static final Logger LOGGER = LoggerFactory.getLogger(ValidationController.class);

//	@Autowired
//	private Environment environment;

	@Autowired
	private ValidationStrategy strategy;

	@PostMapping("/trade-info/validate/bulk")
	public ValidationResult validateBulkTradeInfo(@RequestBody List<TradeInfo> infos){

		LOGGER.debug("Trade info received. No of records to process: {}", infos.size());

		return new ValidationResult();
	}

	@PostMapping("/trade-info/validate")
	public ValidationResult validateTradeInfo(@RequestBody TradeInfo tradeInfo){

		LOGGER.debug("Trade info received. No of records to process: {}", tradeInfo.toString());
		ValidationResult result = strategy.validate(tradeInfo);
		return result;
	}
}
