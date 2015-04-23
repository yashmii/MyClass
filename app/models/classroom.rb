class Classroom < ActiveRecord::Base
  belongs_to :office
  has_many :lessons
end
