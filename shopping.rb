require "./dvd.rb"
require "./book.rb"

class Shopping
  ADJUSTMENT_NUM = 1

  def self.disp(products)
    puts "商品番号を選択してください"

    num = gets.chomp.to_i
    select_product = products[num - ADJUSTMENT_NUM]

    return puts "選択された商品番号はありません" if select_product.nil?

    puts "商品の個数を選択してください"

    quantity = gets.chomp.to_i

    total_price = select_product.get_total_price(quantity)

    puts "お会計は#{total_price}円です"

  end
end