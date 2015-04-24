class Classroom < ActiveRecord::Base
  belongs_to :office
  has_many :lessons
  def to_s
    name
  end
end
