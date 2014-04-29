class KidsController < ApplicationController

  #   before_action :set_bank_account, only: [:show, :edit, :update, :destroy]

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
    #    aaa
    @kid = Kid.find(params[:id])
  end

  def update
    @kid = Kid.find(params[:id])
    respond_to do |format|
      if @kid.update(kid_params)
        format.html { redirect_to kids_path, notice: 'Children was successfully updated.' }
        format.json { head :no_content }
      end
    end
  end

  def index
    @kids = Kid.all
  end

  def show
    @kid = Kid.find(params[:id])
  end

  def destroy
#    aaaa
    @kid = Kid.find(params[:id])
    @kid.destroy
    respond_to do |format|
      format.html { redirect_to kids_path }
    end
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
