class Laboratory < ActiveRecord::Base
  belongs_to :employe
  has_many :computers
  
end

