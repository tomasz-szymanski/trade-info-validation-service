package com.cs.trade.validation.result;

import java.util.ArrayList;
import java.util.List;

public class ValidationResult {

    private List<String> messages = new ArrayList<>();
    private boolean valid;

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

    public void addMessage(String message) {
        getMessages().add(message);
    }
}
