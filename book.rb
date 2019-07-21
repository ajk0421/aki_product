require "./product.rb"

class Book < Product

  def initialize(**params)
    super
    #本クラスの独自の属性
    @page_num = params[:page_num]
  end

  def info
    puts <<~TEXT
      商品番号:#{@product_num}
      商品名:#{@name}
      値段:￥#{@price}
      ページ数:#{@page_num}p
      ------------------------
    TEXT
  end
end