class Lesson < ActiveRecord::Base
  has_many :attendances
  has_many :clients, through: :attendances
  belongs_to :period
  belongs_to :teacher
  belongs_to :classroom
  validates :period_id, presence: true
  validates :teacher_id, presence: true
  validates :classroom_id, presence: true
  def to_s
    id
  end

end
