class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.integer :author_id, null: false
      t.text :description
      t.timestamps
    end

    add_index :projects, [:name, :author_id], unique: true
  end
end
