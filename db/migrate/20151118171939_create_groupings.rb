class CreateGroupings < ActiveRecord::Migration
  def change
    create_table :groupings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true
      t.boolean :joined?, default: false

      t.timestamps null: false
    end
  end
end
