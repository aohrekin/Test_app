class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.text :first_name, null: false
      t.text :last_name, null: false
      t.text :second_name
      t.date :birthday, null: false
      t.text :sex, null: false
      t.references :post, null: false, foreign_key: true
      t.index([:last_name, :first_name, :second_name],unique: true)
      t.timestamps
    end
  end
end
