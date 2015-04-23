class Teacher < ActiveRecord::Base
  has_many :groups
  def to_s
    last_name
  end
end
