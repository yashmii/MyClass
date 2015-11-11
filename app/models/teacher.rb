class Teacher < ActiveRecord::Base
  has_many :groups
  has_many :lessons
  has_many :crms
  def to_s
    first_name+" "+last_name
  end
    mount_uploader :photo, PhotoUploader
end
