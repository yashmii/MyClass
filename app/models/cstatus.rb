class Cstatus < ActiveRecord::Base
  has_many :clients
  def to_s
    cstatus
  end
end
