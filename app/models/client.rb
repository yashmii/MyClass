class Client < ActiveRecord::Base
  has_many :attendances
  has_many :lessons, through: :attendances
  belongs_to :language
  belongs_to :office

  def to_s
    first_name+" "+last_name
  end
    mount_uploader :photo, PhotoUploader
  validates :first_name, presence: true
  validates :telephone_1, presence: true





end
