class MonstersController < ApplicationController

  def index
    @monsters = Monster.all
  end

  def show

  end

  def create
    @monster = Monster.new(text: params[:text])
    @monster.save
    redirect_to("/monsters/index")
  end

  def edit

  end

  def destroy

  end
end
