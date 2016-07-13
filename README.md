# 練習問題

**[A]**
次の内容が正しい場合はcheck、間違っている場合はチェックしない。

- [x] Ruby on Railsは、オープンソース方式で開発されているフレームワークです。
- [ ] Ruby on Railsでは、Ruby以外にもさまざまなプログラミング言語が利用できます。
- [x] Ruby on Railsは、Windows,Mac OS X, LinuxなどさまざまなOSで動作します。
- [x] Railsをインストールするには、パッケージマネージャのRubyGemsを使います。
- [ ] Railsのソースコードは、Shift JISで記述するのが基本です。

**[B]**
次の空欄を埋めてください

- Railsの原則DRYは、「Don't Repeat Yourself」の略で◯◯という意味です。
- Railsは◯◯という設計哲学で作られており、規約に従ってアプリケーションを開発することで、記述量を大幅に減らすことができます。

**繰り返しを避けよ**
**設定より規約**

**[C]**
次の空欄を埋めて、変数@descriptionの値を表示させてください。

**コントローラ**
```ruby
def index
  @message = "こんにちは"
  @description = "これからRailsアプリケーションを作ります。"
end
```

**テンプレート**
```ruby
<h1><%= @message %></h1>
<p>◯◯</p>
```

**<%= @description %>**
