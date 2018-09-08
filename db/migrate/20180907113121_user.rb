class User < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, unique: true, index: true, limit: 128
      t.string :introduction
      t.text :icon_url

      t.timestamps null: false
    end
  end
end