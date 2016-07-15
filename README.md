# 練習問題

**[A]**
Chapter6の練習問題までで作成したBookモデルをテストします。title属性にエラーが発生したことを確認するアサーションメソッドを記述してください。

```ruby
test "presence" do
  book = Book.new
  assert book.invalid?
  assert article.errors.include?(:title)
end
```

**[B]**
Chapter6の練習問題Bで作ったupdateアクションのテストを記述します。
アクションがshowメソッドへのリダイレクションを正しく行うかどうかテストするアサーションメソッドを記述して下さい。

```ruby
test "update" do
  book = FactoryGirl.create(:book)
  post :update, id: book, book: FactoryGirl.attributes_for(:book)
  assert_redirected_to book
end
```

**[C]**
Chapter6の練習問題Bで作ったupdateアクションを改造して、保存に失敗したときはeditアクションのテンプレートでレンダリングを行うこととします。次のテストが成功するように、updateアクションを書き換えて下さい。

**テスト**
```ruby
test "fail to update" do
  book = FactoryGirl.create(:book)
  post :update, id: book, book: FactoryGirl.attributes_for(:book, title: "")
  assert_response :success
  assert_template "edit"
end
```

**アクション**
```ruby
def update
  @book = Book.find(params[:id])
  @book.assign_attributes(params[:book])
  if @book.save
    redirect_to @book, notice: "更新しました。"
  else
    render "edit"
  end
end
```
