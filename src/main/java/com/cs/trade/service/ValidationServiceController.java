package com.cs.trade.service;

import com.cs.trade.info.TradeInfoOption;
import com.cs.trade.info.TradeInfoWrapper;
import com.cs.trade.validation.result.DetailedValidationResult;
import com.cs.trade.validation.result.ValidationResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@RestController
public class ValidationServiceController {

    private static final Logger LOGGER = LoggerFactory.getLogger(ValidationServiceController.class);

    private final ValidationService validationService;

    @Autowired
    public ValidationServiceController(ValidationService validationService) {
        this.validationService = validationService;
    }

    @PostMapping("/trade-info/validate")
    public ValidationResult validateTradeInfo(@RequestBody TradeInfoOption tradeInfo) {
        LOGGER.debug("TradeInfo received: {}", tradeInfo);
        ValidationResult result = validationService.validate(tradeInfo);
        LOGGER.debug("Validation result: isValid={}, messages={}", result.isValid(), result.getMessages());
        return result;
    }

    @PostMapping("/trade-info/validate/multiple")
    public List<DetailedValidationResult> validateBulkTradeInfo(@RequestBody TradeInfoWrapper infoBulk) {
        LOGGER.debug("Multiple TradeInfo received {}", infoBulk.getTradeInfos().size());
        List<DetailedValidationResult> resultList = validateListOfMessages(infoBulk.getTradeInfos());
        LOGGER.debug("Validated {} TradeInfo.", resultList.size());
        return resultList;
    }

    @PostMapping("/trade-info/validate/multiple/array")
    public List<DetailedValidationResult> validateBulkTradeInfo(@RequestBody TradeInfoOption[] infoBulk) {
        List<TradeInfoOption> infoBulkAsList = Arrays.asList(infoBulk);
        List<DetailedValidationResult> resultList = validateListOfMessages(infoBulkAsList);
        LOGGER.debug("Validated {} TradeInfo.", resultList.size());
        return resultList;
    }

    private List<DetailedValidationResult> validateListOfMessages(List<TradeInfoOption> tradeInfoList) {
        List<DetailedValidationResult> resultList = new ArrayList<>();
        for (TradeInfoOption tradeInfo : tradeInfoList) {
            ValidationResult result = validationService.validate(tradeInfo);
            LOGGER.debug("Validation result for {}, : isValid={}, messages={}", tradeInfo, result.isValid(), result.getMessages());
            resultList.add(new DetailedValidationResult(tradeInfo, result.getMessages(), result.isValid()));
        }
        return resultList;
    }

}
