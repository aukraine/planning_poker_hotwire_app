class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.belongs_to :room, null: false, foreign_key: true
      t.string :name
      t.integer :estimation, default: nil

      t.timestamps
    end
  end
end
