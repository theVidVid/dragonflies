class AddStartToFreelancers < ActiveRecord::Migration[5.2]
  def change
    add_column :freelancers, :start, :date
  end
end
