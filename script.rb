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
