sample_price_array = [17,3,6,9,15,8,6,10,1]

def stock_picker(price_array)
    price_hash = price_array.map.with_index { |x, i| [i, x] }.to_h
    puts price_hash

    price_hash.each do |index, price|
        max_profit = 0
        puts index
        puts price
        

        sell_price_hash = price_hash.delete(index)
        puts sell_price_hash

        # sell_price_hash.each do |day, current_price|
        #     puts "day #{day} current price #{current_price}"
        # end
    end

end

# def stock_picker(price_array)
#     price_hash = price_array.to_h
    

#     price_array.each do |price|
#         max_profit = 0
#         # puts price

#         sell_index_array.each_index{ |i| puts i }

#         sell_price_array = price_array.drop(price_index + 1) # add 1 to exclude the current price

#         if !sell_price_array.empty?

#             # p sell_price_array
#             sell_price_array.each do |sell_price|
#                 profit = sell_price - price
#                 # puts profit
#             end
#         end
        
        
#         price_array.each_with_index do |current_price, day|
#             current_array = price_array[0, day + 1]
#             p current_array
#             profit = price - current_price
#             if (profit) > max_profit 
#                 max_profit = profit
#             end
#         end
#     end

# end

#TOP 1
def stock_picker(prices)
  min_p = prices[0]
  min_i = 0

  profit = 0
  days = [0, 0]

  prices.each_with_index do |p, i|
    if p < min_p
      min_p = p
      min_i = i
      next
    end
    
    if p - min_p > profit
      profit = p - min_p
      days = [min_i, i]
    end
  end
  
  days
end

array = [17, 3, 6, 9, 15, 8, 5, 1, 10]

p stock_picker(array)
# => [1, 4]

#TOP 2
#stock_picker([17,3,6,9,15,8,6,1,10])
#>[1,4]
#gets the greatest difference in array assuming the lowest number has to come first
#returns the index of lowest number, followed by index of highest number

input = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  results = prices.each_with_index.to_a.combination(2).max_by{|buy,sell| sell[0]-buy[0]}.map{|price, i| i}
end

puts(stock_picker(input))

#TOP 3
def stock_picker(prices)
    best_profit = 0
    best_buy_sell_days = ""
    
    prices.each_with_index do |element1, index1|
        prices.each_with_index do |element2, index2|

            profit = element2 - element1

        if profit > best_profit && index1 < index2
            best_profit = profit
            best_buy_sell_days = [index1, index2]
        end
    end
    end

    p best_buy_sell_days
    best_buy_sell_days
    end
    
stock_picker([17,3,6,9,15,8,6,1,10])
# => [1, 4]
