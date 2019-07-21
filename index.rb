require "./shopping.rb"

dvd1 = Dvd.new(product_num: 1, name: 'アラジン', price: 2000, running_time: 120)
dvd2 = Dvd.new(product_num: 2, name: 'スパイダーマン', price: 1500, running_time: 120)
dvd3 = Dvd.new(product_num: 3, name: 'ザ．ファブル', price: 1500, running_time: 100)
book1 = Book.new(product_num: 4, name: 'Ruby入門', price: 3000, page_num: 500)
book2 = Book.new(product_num: 5, name: '何者', price: 500, page_num: 300)

products = [dvd1, dvd2, dvd3, book1, book2]

Product.disp(products)

Shopping.disp(products)