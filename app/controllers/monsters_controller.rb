class MonstersController < ApplicationController

  def index
    @monsters = Monster.search(params[:search]).page(1).per(10)
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def new
    @monster = Monster.new
  end

  def create
    @monster = Monster.new(monster_params)
    if @monster.save
      redirect_to("/monsters", notice: "save成功")
    else
      flash.now[:notice] = "Some errors occured"
      render :new
    end
  end

  def edit
    @monster = Monster.find(params[:id])
  end

  def update
    @monster = Monster.find_by(id: params[:id])
    @monster.update_attributes(monster_params)
    if @monster.save
      redirect_to("/monsters", notice: "save成功")
    else
      flash.now[:notice] = "Some errors occured"
      render :edit
    end

  end

  def destroy
    @monster = Monster.find(params[:id])
    @monster.destroy
    redirect_to("/monsters")
  end


  def search
    @monsters = Monster.search(params[:search])
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :level, :attack, :defense)
  end

end
