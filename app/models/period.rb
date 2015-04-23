class Period < ActiveRecord::Base
  belongs_to :group
  has_many :lessons
  validates :group_id, presence: true
  def to_s
    id
  end
end
