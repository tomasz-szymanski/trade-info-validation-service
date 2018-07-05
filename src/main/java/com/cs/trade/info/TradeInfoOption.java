package com.cs.trade.info;

import java.math.BigDecimal;
import java.time.LocalDate;

public class TradeInfoOption extends TradeInfo {

	private String style;
	private String strategy;
	private LocalDate deliveryDate;
	private LocalDate expiryDate;
	private LocalDate excerciseStartDate;
	private String payCcy;
	private BigDecimal premium;
	private String premiumCcy;
	private String premiumType;
	private LocalDate premiumDate;

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getStrategy() {
		return strategy;
	}

	public void setStrategy(String strategy) {
		this.strategy = strategy;
	}

	public LocalDate getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(LocalDate deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	public LocalDate getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(LocalDate expiryDate) {
		this.expiryDate = expiryDate;
	}

	public LocalDate getExcerciseStartDate() {
		return excerciseStartDate;
	}

	public void setExcerciseStartDate(LocalDate excerciseStartDate) {
		this.excerciseStartDate = excerciseStartDate;
	}

	public String getPayCcy() {
		return payCcy;
	}

	public void setPayCcy(String payCcy) {
		this.payCcy = payCcy;
	}

	public BigDecimal getPremium() {
		return premium;
	}

	public void setPremium(BigDecimal premium) {
		this.premium = premium;
	}

	public String getPremiumCcy() {
		return premiumCcy;
	}

	public void setPremiumCcy(String premiumCcy) {
		this.premiumCcy = premiumCcy;
	}

	public String getPremiumType() {
		return premiumType;
	}

	public void setPremiumType(String premiumType) {
		this.premiumType = premiumType;
	}

	public LocalDate getPremiumDate() {
		return premiumDate;
	}

	public void setPremiumDate(LocalDate premiumDate) {
		this.premiumDate = premiumDate;
	}

	@Override
	public String toString() {
		return "TradeInfoOption{" +
				"style='" + style + '\'' +
				", strategy='" + strategy + '\'' +
				", deliveryDate=" + deliveryDate +
				", expiryDate=" + expiryDate +
				", excerciseStartDate=" + excerciseStartDate +
				", payCcy='" + payCcy + '\'' +
				", premium=" + premium +
				", premiumCcy='" + premiumCcy + '\'' +
				", premiumType='" + premiumType + '\'' +
				", premiumDate=" + premiumDate +
				"} " + super.toString();
	}
}