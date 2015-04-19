class Period < ActiveRecord::Base
  belongs_to :group
  has_many :lessons

  def to_s
    id
  end
end
