class MagicsController < ApplicationController

  def index
    @magics = Magic.page(params[:page]).per(5)
  end

  def show
    @magic = Magic.find(params[:id])
  end

  def new
    @magic = Magic.new
  end

  def create
    @magic = Magic.new(magic_params)
    if @magic.save
      redirect_to("/magics", notice: "save成功")
    else
      flash.now[:notice] = "Some errors occured"
      render :new
    end
  end

  def edit
    @magic = Magic.find(params[:id])
  end

  def update
    @magic = Magic.find_by(id: params[:id])
    @magic.update_attributes(magic_params)
    if @magic.save
      redirect_to("/magics", notice: "save成功")
    else
      flash.now[:notice] = "Some errors occured"
      render :edit
    end

  end

  def destroy
    @magic = Magic.find(params[:id])
    @magic.destroy
    redirect_to("/magics")

  end

  private

  def magic_params
    params.require(:magic).permit(:name, :effect)
  end

end
