class CreateUserScenes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_scenes do |t|
      t.references :user,  foreign_key: true
      t.references :scene, foreign_key: true

      t.timestamps
    end
  end
end
