class Attendance < ActiveRecord::Base
  belongs_to :client
  belongs_to :lesson
  validates :lesson_id, presence: true
end
