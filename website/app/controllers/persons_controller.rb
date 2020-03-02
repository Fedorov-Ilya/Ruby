class PersonsController < ApplicationController
  before_action :authenticate_user!, only:[:users, :profile]
  def profile
    redirect_to posts_path
  end
end
