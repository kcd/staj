class Probation < ActiveRecord::Base
  attr_accessible :staj_yeri, :tarih, :tur
  belongs_to :user
end
