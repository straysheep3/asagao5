class MembersController < ApplicationController
  def index
    # Memberを背番号順に並べる
    @members = Member.order("number")
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    # 新規作成フォーム(誕生日の初期値を1980,1,1として作成)
    @member = Member.new(birthday: Date.new(1980, 1, 1))
  end

  def create
    # 会員の新規登録
    @member = Member.new(params[:member])
    if @member.save
      redirect_to @member, notice: "会員を登録しました。"
    else
      render "new"
    end
  end

  def edit
    # 更新フォーム
    @member = Member.find(params[:id])
  end

  def update
    # 会員情報の更新
    @member = Member.find(params[:id])
    @member.assign_attributes(params[:member])
    if @member.save
      redirect_to @member, notice: "会員情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    # 会員の削除
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to :members, notice: "会員を削除しました。"
  end

  def search
    @members = Member.search(params[:q])
    render "index"
  end
end
