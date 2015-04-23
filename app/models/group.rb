class Group < ActiveRecord::Base
  has_many :periods
  belongs_to :teacher
  def to_s
    id
  end
end
