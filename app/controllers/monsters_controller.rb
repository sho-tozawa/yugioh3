class MonstersController < ApplicationController

  def index
    @monsters = Monster.all
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def new
    @monster = Monster.new
  end

  def create
    @monster = Monster.new(monster_params)
    @monster.save
    redirect_to(monsters_path)
  end

  def edit
    @monster = Monster.find(params[:id])
  end

  def update
    @monster = Monster.find_by(id: params[:id])
    @monster.update_attributes(monster_params)
    @monster.save
    redirect_to("/monsters")
  end

  def destroy
    @monster = Monster.find(params[:id])
    @monster.destroy
    redirect_to("/monsters")

  end

  private

  def monster_params
    params.require(:monster).permit(:name, :level, :attack, :defense)
  end

end