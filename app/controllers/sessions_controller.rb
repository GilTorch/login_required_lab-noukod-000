class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to "/new"
    else
      session[:name]=params[:name]
      redirect_to "/show"
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
    end
    redirect_to "/new"
  end
end
