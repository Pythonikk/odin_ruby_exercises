test_array = [19, 4, 14, 7, 8, 15, 6, 1, 10]

def stock_picker(stock_prices)
  profits = get_profits(stock_prices)
  max_profit = profits.keys.max
  profits[max_profit]
end 

def get_profits(stock_prices)
  profits = Hash.new
  stock_prices.each_with_index do |buy_price, buy_day|
    stock_prices.each_with_index do |sell_price, sell_day|
      difference = (sell_price - buy_price)
      if difference > 0 && sell_day > buy_day then
        profits[difference] = buy_day, sell_day
      end
    end
  end
  return profits
end  

p stock_picker(test_array)
