class Office < ActiveRecord::Base
  has_many :classrooms
  has_many :clients
  def to_s
    name
  end
end
