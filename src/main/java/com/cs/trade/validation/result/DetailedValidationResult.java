package com.cs.trade.validation.result;

import java.util.ArrayList;
import java.util.List;

import com.cs.trade.info.TradeInfo;

public class DetailedValidationResult {
    private TradeInfo info;
	private List<String> messages = new ArrayList<>();
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

	public void addMessage(String message){
		getMessages().add(message);
	}

	public DetailedValidationResult(TradeInfo info, List<String> messages, boolean valid) {
		this.info = info;
		this.messages = messages;
		this.valid = valid;
	}
}
