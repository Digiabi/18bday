class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|

      t.string :first_name
      t.date :birthday
      t.string :username
      t.boolean :gender

      t.timestamps
    end
  end
end
