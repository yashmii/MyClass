class Group < ActiveRecord::Base
  has_many :periods
  def to_s
    id
  end
end
