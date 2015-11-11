class Crm < ActiveRecord::Base
  belongs_to :client
  belongs_to :teacher
end
