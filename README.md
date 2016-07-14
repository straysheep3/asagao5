# 練習問題

**[A]**
Chapter4の練習問題で作ったBookモデルを扱うBooksControllerを作ることにします。
routes.rbで[resources :books]と指定すると、BooksControllerの各アクションとURLのパス、HTTPメソッドはどのような関係になるでしょうか。
空欄を埋めて下さい。idパラメータには1が入ることにします。

**アクション、URLのパスとHTTPメソッドの対応**

|アクション|URLのパス|HTTPメソッド|
|:--|:--|:--|
|index|/books|GET|
|show|/books/1|GET|
|new|/books/new|GET|
|create|/books/|POST|
|edit|/books/edit/1|GET|
|update|/books/1|PATCH|
|destroy|/books/1|DELETE|

**[B]**
問題[A]のBooksControllerを記述します。indexアクションにはレコードの一覧を書籍名(title)順に取り出すコードを記述してください。showアクションにはidパラメータを元にレコードを１つ取り出すコードを記述してください。

```ruby
class BooksController < ApplicationController
  def index
    @books = Book.order("title")
  end

  def show
    @book = Book.find(params[:id])
  end
end
```

**[C]**
問題[B]のindexアクションとshowアクション用のテンプレートを記述します。空欄を埋めて、index.html.erbではループの中にshowアクションへのリンクを作成してください。show.html.erbでは変数@bookが持っている書籍名(title)、著者名(author)、価格(price)を表示してください。

**index.html.erb**

```html
<ul>
  <% books.each do |book| %>
    <li><%= link_to book.title, book %></li>
  <% end %>
</ul>
```

**show.html.erb**

```html
<p>
  書籍名: <%= @book.title %>
  著者名: <%= @book.author %>
  価格: <%= @book.price %>
</p>
```
