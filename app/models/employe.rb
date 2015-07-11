class Employe < ActiveRecord::Base
    has_many :laboratories
    belongs_to :user
    validates :name,presence: true
end
