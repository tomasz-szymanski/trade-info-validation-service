package com.cs.trade.validation;

import com.cs.trade.info.TradeInfo;

import java.util.List;

public class ValidationResult {
    private TradeInfo info;
    private List<String> messages;
    private boolean valid;

	public TradeInfo getInfo() {
		return info;
	}

	public void setInfo(TradeInfo info) {
		this.info = info;
	}

	public List<String> getMessages() {
		return messages;
	}

	public void setMessages(List<String> messages) {
		this.messages = messages;
	}

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}
}
