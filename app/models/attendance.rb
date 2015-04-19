class Attendance < ActiveRecord::Base
  belongs_to :client
  belongs_to :lesson

end
