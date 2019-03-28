class MonstersController < ApplicationController

  def index
    @monsters = Monster.all
  end

  def show
    @monster = Monster.find_by(id:params[:id])
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
  end

  def destroy
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :level)
  end

end