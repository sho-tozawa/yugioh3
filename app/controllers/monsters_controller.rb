class MonstersController < ApplicationController
  def index
    @search_params = monster_search_params
    @monsters = Monster.search(@search_params).page(1).per(10)
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

  def monster_search_params
    params.fetch(:search, {}).permit(:name, :level, :attack_from, :attack_to, :defense_from, :defense_to, :monster_level)
  end
end
