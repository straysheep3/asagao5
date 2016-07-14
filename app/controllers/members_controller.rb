class MembersController < ApplicationController
  def index
    # Memberを背番号順に並べる
    @members = Member.order("number")
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    #code
  end

  def create
    #code
  end

  def edit
    #code
  end

  def update
    #code
  end

  def destroy
    #code
  end

  def search
    @members = Member.search(params[:q])
    render "index"
  end
end
