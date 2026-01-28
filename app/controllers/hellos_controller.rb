class HellosController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false
  layout false

  def index
    puts session[:message]
    render json: { message: session[:message] }
  end

  def create
    puts params[:message]
    session[:message] = params[:message]
    head :ok
  end
end
