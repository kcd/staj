class UserController < ApplicationController
  before_filter :authenticate_user!
  def index
    #authorize! :index, @user, :message => 'Not authorized as an administrator.'
    #@user = User.all
  end
  def content
    email = User.find(current_user_id).email.gsub(/@\w+.[A-z]+.[A-z]{2,4}+.[A,z]{2,4}/,'')
  end
end
