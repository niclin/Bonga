class RenameLevelName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :roles, :level_name, :name
  end
end
