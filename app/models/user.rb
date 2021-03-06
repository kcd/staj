class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :no, :password, :password_confirmation, :remember_me, :role
  # attr_accessible :title, :body
  ROLES = %w[ogrenci kurum komisyon]

  def role?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end
end
