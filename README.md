# 練習問題

**[A]**
データベースに書籍を管理するbooksテーブルを作成することにします。マイグレーションスクリプトにカラムの定義を記述してください。
title(書籍名)、author(著者名),price(価格)の3つのカラムを用意し、カラムの型はそれぞれ文字列、文字列、整数とします。

```ruby
class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :price
    end
  end
end
```

**[B]**
Bookモデルを使って、問題[A]のbooksテーブルに書籍のデータを保持するためのコードを書きます。
2つの空欄に書籍名を設定するコードと、データを保持するコードを書いて下さい。書籍名は好きなものでも構いません。

```ruby
book = Book.new
book.title = "彼岸過迄"
book.author = "夏目漱石"
book.price = 1200
book.save
```

**[C]**
Bookモデルを使って、booksテーブルからidが123の書籍をモデルオブジェクトに取り出すコードを書いて下さい。

```ruby
book = Book.find(123)
```

**[D]**
booksテーブルから著者が「夏目漱石」の書籍を取り出します。Bookモデルとクエリーメソッドを使ってリレーションオブジェクトを作って下さい。

```ruby
book = Book.where(author: "夏目漱石")
```


**[E]**
booksテーブルから価格が3000円未満の書籍を取り出します。Bookモデルとクエリーメソッドを使ってリレーションオブジェクトを作って下さい。

```ruby
book = Book.where("price < ?", 3000)
```
