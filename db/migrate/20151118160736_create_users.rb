class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :phone
      t.decimal :lat, :precision => 10, :scale => 6, :default => 0.0
      t.decimal :lng, :precision => 10, :scale => 6, :default => 0.0

      t.timestamps null: false
    end
  end
end
