class Group < ActiveRecord::Base
  has_many :periods
  belongs_to :teacher
  belongs_to :language
  belongs_to :office
  validates :group_name, presence: true
  validates :language, presence: true
  validates :teacher, presence: true
  def to_s
    group_name
  end
end
