class RenameEndToEndDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :freelancers, :end, :end_date
  end
end
