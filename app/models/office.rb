class Office < ActiveRecord::Base
  has_many :classrooms
  def to_s
    name
  end
end
