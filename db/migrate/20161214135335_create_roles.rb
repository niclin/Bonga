class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.integer :level
      t.string :level_name

      t.timestamps
    end
  end
end
