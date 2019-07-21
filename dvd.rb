require "./product.rb"

class Dvd < Product

  def initialize(**params)
    #スーパークラスのinitializeメソッドを呼び出す
    super
    #DVDクラス独自の属性
    @running_time = params[:running_time]
  end

  def info
    puts <<~TEXT
      商品番号:#{@product_num}
      商品名:#{@name}
      値段:￥#{@price}
      再生時間:#{@running_time}分
      ------------------------
    TEXT
  end
end