# 練習問題

**[A]**
空欄の中に適切な語句を記入して下さい。

- 記事の投稿など、サーバーの状態を変更するときには、HTTPの◯◯メソッドで送信します。
- redirect_toメソッドを使うと、ブラウザーに新しいURLを示して別のページへの◯◯を行うことができます。
- routes.rbを編集すると、URLのパスから特定のアクションを選ぶ◯◯の設定を変更できます。

1. **POST**
2. リダイレクション
3. ルーティング

**[B]**
routes.rbに「get "about" => "top#about", as: "about"」という設定をしたとします。テンプレートの中で、TopControllerのaboutアクションへのリンクを作成してください。リンクのテキストは「このサイトについて」としてください。

```html
<p><%= link_to "このサイトについて", about_path %></p>
```

**[C]**
テンプレートの中で、配列@countriesの中身をHTMLのリストに並べて表示させてください。

**アクション**
```ruby
@countries = ["イタリア", "フランス", "ドイツ"]
```

**テンプレート**
```html
<ul>
	<% @countries.each do |country| %>
	<li><%= country %></li>
	<% end %>
</ul>
```
