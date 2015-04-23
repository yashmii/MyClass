class Teacher < ActiveRecord::Base
  has_many :groups
  has_many :lessons
  def to_s
    last_name
  end
end
