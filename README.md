# 練習問題

**[A]**
次の空欄を埋め、入力した数値に消費税を加えた値を表示してください。小数点以下を切り落とすには、数値オブジェクトのto_iメソッドを使います。なお、消費税率は8%とします。

```ruby
print = "価格を入力してください: "
price = gets.chomp
price = ◯◯
puts "税込み#{price}円です。"
```

**price = ( price.to_i * 1.08 ).to_i**

**[B]**
配列flowersの要素を１つずつ表示するプログラムを書いて下さい。

```ruby
flowers = ["carnation", "tulip", "cosmos"]
flowers.each do |flower|
  puts flower
end
```

**[C]**
空欄を埋めて、属性を取り出すアクセサメソッドをBookクラスに加えてください。

```ruby
class Book
	◯◯
	def initialize(title, author, price)
	  @title = title
		@author = author
		@price = price
	end
end

book1 = Book.new("彼岸過迄", "夏目漱石", 540)
puts "#{book1.title}、 #{book1.author}著、#{book1.price}円"
```

**attr_accessor :title, :author, :price**
