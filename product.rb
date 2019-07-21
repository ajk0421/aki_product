class Product

  DISCOUNT_RATE = 0.9

  def initialize(**params)
    @product_num = params[:product_num]
    @name  = params[:name]
    @price = params[:price]
  end

  def self.disp(products)
    products.each {|product| product.info}
  end

  def get_total_price(quantity)
    total_price = @price * quantity
    quantity >= 3 ? pay_off(total_price) : total_price
  end

  def pay_off(total_price)
    (total_price * DISCOUNT_RATE).floor
  end
end
