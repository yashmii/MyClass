class Language < ActiveRecord::Base
  has_many :groups
  has_many :clients
  def to_s
    lang
  end
end
