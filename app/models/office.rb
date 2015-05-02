class Office < ActiveRecord::Base
  has_many :classrooms
  has_many :clients
  has_many :groups
  def to_s
    name
  end
end
