package com.cs.trade.service;

import com.cs.trade.info.TradeInfoOption;
import com.cs.trade.info.TradeType;
import com.cs.trade.validation.policies.CommonValidationPolicy;
import com.cs.trade.validation.policies.OptionsValidationPolicy;
import com.cs.trade.validation.policies.SpotForwardValidationPolicy;
import com.cs.trade.validation.result.ValidationResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ValidationService {

    private final CommonValidationPolicy commonPolicy;
    private final OptionsValidationPolicy optionsPolicy;
    private final SpotForwardValidationPolicy spotForwardPolicy;

    @Autowired
    public ValidationService(CommonValidationPolicy commonPolicy, OptionsValidationPolicy optionsPolicy,
                             SpotForwardValidationPolicy spotForwardPolicy) {
        this.commonPolicy = commonPolicy;
        this.optionsPolicy = optionsPolicy;
        this.spotForwardPolicy = spotForwardPolicy;
    }

    public ValidationResult validate(TradeInfoOption tradeInfo) {

        TradeType tradeType = tradeInfo.getType();
        ValidationResult result = commonPolicy.validate(tradeInfo);

        if (TradeType.Spot.equals(tradeType) || TradeType.Forward.equals(tradeType)) {
            ValidationResult specificResult = spotForwardPolicy.validate(tradeInfo);
            result.getMessages().addAll(specificResult.getMessages());
            result.setValid(result.isValid() && specificResult.isValid());
        }

        if (TradeType.VanillaOption.equals(tradeType)) {
            ValidationResult specificResult = optionsPolicy.validate((TradeInfoOption) tradeInfo);
            result.getMessages().addAll(specificResult.getMessages());
            result.setValid(result.isValid() && specificResult.isValid());
        }

        return result;

    }

}
