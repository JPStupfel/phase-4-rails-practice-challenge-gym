class Membership < ApplicationRecord
    belongs_to :client
    belongs_to :gym

    validates :charge, presence: true
    validates_associated :gym
    validates_associated :client
    validates :client, uniqueness: { scope: :gym}


end

