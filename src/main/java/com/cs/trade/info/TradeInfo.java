package com.cs.trade.info;

import java.math.BigDecimal;
import java.util.Date;

public class TradeInfo {

//    {"customer":"PLUTO1","ccyPair":"EURUSD","type":"Spot",
// "direction":"BUY","tradeDate":"2016-08-11",
// "amount1":1000000.00,"amount2":1120000.00,"rate":1.12,"valueDate":"2016-08-15",
// "legalEntity":"CS Zurich","trader":"Johann Baumfiddler"},

    private String customer;
    private String ccyPair;
    private TradeType type;
    private TradeDirection direction;
    private Date tradeDate;
    private BigDecimal amount1;
    private BigDecimal amount2;
    private BigDecimal rate;
    private Date valueDate;
    private String legalEntity;
    private String trader;

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }

    public String getCcyPair() {
        return ccyPair;
    }

    public void setCcyPair(String ccyPair) {
        this.ccyPair = ccyPair;
    }

    public TradeType getType() {
        return type;
    }

    public void setType(TradeType type) {
        this.type = type;
    }

    public TradeDirection getDirection() {
        return direction;
    }

    public void setDirection(TradeDirection direction) {
        this.direction = direction;
    }

    public Date getTradeDate() {
        return tradeDate;
    }

    public void setTradeDate(Date tradeDate) {
        this.tradeDate = tradeDate;
    }

    public BigDecimal getAmount1() {
        return amount1;
    }

    public void setAmount1(BigDecimal amount1) {
        this.amount1 = amount1;
    }

    public BigDecimal getAmount2() {
        return amount2;
    }

    public void setAmount2(BigDecimal amount2) {
        this.amount2 = amount2;
    }

    public BigDecimal getRate() {
        return rate;
    }

    public void setRate(BigDecimal rate) {
        this.rate = rate;
    }

    public Date getValueDate() {
        return valueDate;
    }

    public void setValueDate(Date valueDate) {
        this.valueDate = valueDate;
    }

    public String getLegalEntity() {
        return legalEntity;
    }

    public void setLegalEntity(String legalEntity) {
        this.legalEntity = legalEntity;
    }

    public String getTrader() {
        return trader;
    }

    public void setTrader(String trader) {
        this.trader = trader;
    }
}
