class Tprice < ActiveRecord::Base
  has_many :groups
  def to_s
    name
  end
end
