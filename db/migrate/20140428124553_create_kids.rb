class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|

      t.integer :user_id
      t.string :first_name
      t.date :birthday
      t.string :username
      t.string :gender
      t.string :photo

      t.timestamps
    end
  end
end
