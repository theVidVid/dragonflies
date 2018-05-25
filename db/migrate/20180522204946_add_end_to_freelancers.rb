class AddEndToFreelancers < ActiveRecord::Migration[5.2]
  def change
    add_column :freelancers, :end, :date
  end
end
