
class CashRegister
    attr_accessor :total, :discount, :all_items
    
    def initialize (discount=0)
        @total = 0
        @discount = discount
        @all_items = []
        end
        
        def add_item(item, price, quantity=1)
            @last_item = price * quantity
            @all_items.concat([item]*quantity)
            @total = total + (price * quantity)
        end

        def apply_discount
            sum = self.discount
            if sum > 0
           @total = total-total*sum/100
           "After the discount, the total comes to $#{total}."
            else
            "There is no discount to apply." 
            end  
        end

        def items
            return all_items
        end

        def void_last_transaction
            @total = total-@last_item
        end

end
