class RenameReplacementColumn < ActiveRecord::Migration
  def change
    rename_column :medicine_replaces, :replacement, :replacement_id
  end
end
