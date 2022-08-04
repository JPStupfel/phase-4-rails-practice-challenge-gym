class Client < ApplicationRecord
    has_many :memberships
    has_many :gyms, through: :memberships

    def spending
    #   [{ 'sum': 4}]
   { "total": self.memberships.sum( "charge") }
#    byebug
   
    end

end
