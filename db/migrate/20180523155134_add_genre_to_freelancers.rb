class AddGenreToFreelancers < ActiveRecord::Migration[5.2]
  def change
    add_column :freelancers, :genre, :string
  end
end
