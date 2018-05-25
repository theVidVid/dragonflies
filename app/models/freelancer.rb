class Freelancer < ApplicationRecord
    belongs_to :user
    # has_one :destination
    # after_create :create_destination

    def self.search(search)
        where("location LIKE ?", "%#{search}%") 
    end

 #    # acts_as_messageable

 #     # def name
 #  #   "User = #{id}"
 #  # end

 #    def mailboxer_email(object)
 # #return the model's email here
	# end
	
end
