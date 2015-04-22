class Client < ActiveRecord::Base
  has_many :attendances
  has_many :lessons, through: :attendances

  def to_s
    last_name
  end
    mount_uploader :photo, PhotoUploader
  validates :first_name, presence: true
  validates :telephone_1, presence: true





end
