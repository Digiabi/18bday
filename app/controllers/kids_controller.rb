class KidsController < ApplicationController

  def new
    @kid = Kid.new
  end

  def create
    
     @kid = Kid.new(kid_params)
    respond_to do |format|
      if @kid.save
        format.html { redirect_to kid_path(@kid), notice: 'Kid was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit

  end

  def update
    
  end

  def index
    @kids = Kid.all
  end

  def show
     @kid = Kid.find(params[:id])
  end

  def destroy

  end

  private
  # Use callbacks to share common setup or constraints between actions.

  #  def set_user
  #    @user = User.find(params[:id])
  #  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def kid_params
    params.require(:kid).permit(:first_name,:birthday,:username, :gender, :photo, :user_id)
  end

end
