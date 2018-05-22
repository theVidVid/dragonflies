class Freelancer < ApplicationRecord
    belongs_to :user
    # has_one :destination
    # after_create :create_destination

    def self.search(search)
        where("location LIKE ?", "%#{search}%") 
    end

end
