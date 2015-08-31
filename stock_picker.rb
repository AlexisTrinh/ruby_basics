def stock_picker(prices)
	best_days = [0,0]
	best_profit = prices[1]-prices[0]
	prices.each_with_index do |buy_price, buy_index|
		for sell_index in buy_index..(prices.length-1)
			test_profit = prices[sell_index] - prices[buy_index]
			if test_profit > best_profit
				best_days = [buy_index,sell_index]
				best_profit = test_profit
			end
		end
	end
	best_days
end

puts stock_picker([17,3,6,9,15,8,6,1,10])