sample_price_array = [17,3,6,9,15,8,6,10,1]

def stock_picker(price_array)
    price_array.each do |price|
        max_profit = 0
        puts price

        price_index = price_array.find_index(price)
        sell_price_array = price_array.drop(price_index + 1)

        if !sell_price_array.empty?
            p sell_price_array
        end
        
        
        # price_array.each_with_index do |current_price, day|
        #     current_array = price_array[0, day + 1]
        #     p current_array
        #     profit = price - current_price
        #     if (profit) > max_profit 
        #         max_profit = profit
        #     end
        # end
    end

end
