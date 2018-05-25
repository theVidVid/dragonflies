class AddDestinationToFreelancers < ActiveRecord::Migration[5.2]
  def change
    add_column :freelancers, :destination, :string
  end
end
