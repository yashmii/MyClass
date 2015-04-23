class Group < ActiveRecord::Base
  has_many :periods
  belongs_to :teacher
  belongs_to :language
  def to_s
    lang
  end
end
