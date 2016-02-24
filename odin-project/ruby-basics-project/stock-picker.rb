# def stock_picker array
#   trade = array.combination(2).to_a.reject {|x, y| x >= y}.max_by {|x, y| y-x}
#   trade.nil? ? "no trade" : trade.map {|p| array.index(p)}
# end
#
# stock_picker [1000,201]

def stock_picker(stocks)
  profit = 0
  date = [0,0]

  stocks.each_with_index do |price, day|
    (day...(stocks.length)).each do |sell|
      difference = stocks[sell] - price
      if difference > profit
        profit = difference
        date = [day, sell]
      end
    end
  end
  if profit == 0
    "No profit to be made"
  else
    "For a profit of $#{profit}, buy on day #{date[0]+1} ($#{stocks[date[0]]}) and sell on day #{date[1]+1}  ($#{stocks[date[1]]})"
  end
end

puts stock_picker([17,1,11,19,7,5,3,1,20])
