class MonstersController < ApplicationController

 def index

 end
 def show

 end

 def new
   @monster = Monster.new
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
