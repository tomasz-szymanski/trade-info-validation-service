package com.cs.trade.info;

import java.util.ArrayList;
import java.util.List;

public class TradeInfoWrapper {
	private List<TradeInfoOption> tradeInfos = new ArrayList<>();

	public List<TradeInfoOption> getTradeInfos() {
		return tradeInfos;
	}

	public void setTradeInfos(List<TradeInfoOption> tradeInfos) {
		this.tradeInfos = tradeInfos;
	}
}
