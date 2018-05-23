class RenameStartToStartDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :freelancers, :start, :start_date
  end
end
