class Company < ActiveRecord::Base
  has_many :offices
  def to_s
    company_name
  end
   mount_uploader :logo, LogoUploader
  validates :company_name, presence: true
end
