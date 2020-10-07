test_array = [19, 4, 14, 7, 8, 15, 6, 1, 10]

def stock_picker(stock_prices)
  profits = get_profits(stock_prices)
  max_profit = profits.keys.max
  profits[max_profit]
end 

def get_profits(stock_prices)
  profits = Hash.new
  stock_prices.each_with_index do |price, day|
    stock_prices.each_with_index do |intraPrice, intraDay|
      difference = (intraPrice - price)
      if difference > 0 && intraDay > day then
        profits[difference] = day, intraDay
      end
    end
  end
  return profits
end  

p stock_picker(test_array)
