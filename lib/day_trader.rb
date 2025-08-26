def day_trader(prices)
  best_buy_day = 0
  best_sell_day = 1
  max_profit = prices[1] - prices[0]

  for buy_day in 0...(prices.length - 1)
    for sell_day in (buy_day + 1)...prices.length
      profit = prices[sell_day] - prices[buy_day]

      if profit > max_profit
        max_profit = profit
        best_buy_day = buy_day
        best_sell_day = sell_day
      end
    end
  end

  return [best_buy_day, best_sell_day]
end
