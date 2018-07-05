package com.cs.trade;

import com.cs.trade.info.TradeInfo;
import com.cs.trade.validation.result.ValidationResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpEntity;
import org.springframework.web.client.RestTemplate;

import java.time.LocalDate;

@SpringBootApplication
public class TradeInfoValidationServiceApplication {

    private static final Logger LOGGER = LoggerFactory.getLogger(TradeInfoValidationServiceApplication.class);

    public static void main(String[] args) {
        SpringApplication.run(TradeInfoValidationServiceApplication.class, args);
    }

    @Bean
    public RestTemplate restTemplate(RestTemplateBuilder builder) {
        return builder.build();
    }

    @Bean
    public CommandLineRunner run(RestTemplate restTemplate) throws Exception {
        return args -> {
            TradeInfo tradeInfo = new TradeInfo();
            tradeInfo.setCcyPair("EURUSD");
            tradeInfo.setCustomer("PLUTON");
            tradeInfo.setValueDate(LocalDate.parse("2018-07-04"));
            tradeInfo.setTradeDate(LocalDate.parse("2018-02-01"));

            HttpEntity<TradeInfo> request = new HttpEntity<>(tradeInfo);
            String url = "http://localhost:8001/trade-info/validate";
            ValidationResult result = restTemplate.postForObject(url, request, ValidationResult.class);
            LOGGER.debug(result.toString());
        };
    }
}
