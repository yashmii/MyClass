class Language < ActiveRecord::Base
  has_many :groups
  def to_s
    lang
  end
end
