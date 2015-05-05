class Office < ActiveRecord::Base
  has_many :classrooms
  has_many :clients
  has_many :groups
  belongs_to :company
  def to_s
    name
  end
end
