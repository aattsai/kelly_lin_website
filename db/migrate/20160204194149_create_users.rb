class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true, index: true
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
