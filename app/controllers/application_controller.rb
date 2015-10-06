class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  respond_to :html, :json
  responders :flash


  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

end
