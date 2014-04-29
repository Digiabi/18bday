class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|


      t.text :body
      t.string :email
      
      t.timestamps
    end
  end
end
