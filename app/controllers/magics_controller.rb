class MagicsController < ApplicationController
  def index
    @magics = Magic.all
  end

  def show
    @magic = Magic.find(params[:id])
  end

  def new
    @magic = Magic.new
  end

  def create
    @magic = Magic.new(magic_params)
    @magic.save
    redirect_to(magics_path)
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
    params.require(:magic).permit(:name)
  end

end
