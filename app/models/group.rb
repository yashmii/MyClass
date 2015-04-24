class Group < ActiveRecord::Base
  has_many :periods
  belongs_to :teacher
  belongs_to :language

end
