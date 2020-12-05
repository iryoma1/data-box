class CreateScenes < ActiveRecord::Migration[6.0]
  def change
    create_table :scenes do |t|
      t.string :name,             null: false
      t.string :user_name,        null: false
      t.references :user,         null: false, foreign_key: true
      t.text :comment
      t.timestamps
    end
  end
end
