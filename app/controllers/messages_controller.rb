class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end


  private
  # Use callbacks to share common setup or constraints between actions.

  #  def set_user
  #    @user = User.find(params[:id])
  #  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def kid_params
    params.require(:messages).permit(:body,:email)
  end

end
