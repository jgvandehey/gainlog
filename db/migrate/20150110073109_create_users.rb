class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :nickname
      t.text :bio
      t.string :email

      t.timestamps
    end
  end
end
