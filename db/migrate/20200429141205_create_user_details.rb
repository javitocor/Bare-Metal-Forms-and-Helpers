class CreateUserDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :user_details do |t|
      t.string :name
      t.string :nationality
      t.date :birthdate
      t.string :gender
      t.boolean :employee
      t.integer :user_id

      t.timestamps
    end
  end
end
