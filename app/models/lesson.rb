class Lesson < ActiveRecord::Base
  has_many :attendances
  has_many :clients, through: :attendances
  def to_s
    id
  end

end
