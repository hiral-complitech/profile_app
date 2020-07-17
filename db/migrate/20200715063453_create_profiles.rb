class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :address
      t.integer :age
      t.integer :height
      t.integer :weight
      t.integer :gender
      t.string :education
      t.string :description
      t.string :email

      t.timestamps
    end
  end
end
