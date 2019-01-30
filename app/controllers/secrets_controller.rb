class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  def new
  end

  def require_login
    redirect_to "/new" unless !current_user.nil?
  end

end
