class Contact < ActiveRecord::Base
  validates :name, :presence => true
  has_many :phones

end
