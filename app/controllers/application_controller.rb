class ApplicationController < ActionController::Base
  #rescue_from CanCan::AccessDenied do |exception|
    #redirect_to root_path, :alert => exception.message
  #end
  protect_from_forgery
  def after_sign_in_path_for(resources)
    email = User.find(current_user.id).email.gsub(/@\w+.[A-z]+.[A-z]{2,4}+.[A-z]{2,4}/,'')
    email = email.sub(/[.]/,'')
    case current_user.role
    when "ogrenci"
      "/student/index"
    when "kurum"
      "/institution/index"
    when "komisyon"
      "/commission/index"
    end
  end
end
  

