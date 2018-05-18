class CreateFreelancers < ActiveRecord::Migration[5.2]
  def change
    create_table :freelancers do |t|
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.string :userpic
      t.string :picture
      t.integer :user_id
      t.string :location

      t.timestamps
    end
  end
end
