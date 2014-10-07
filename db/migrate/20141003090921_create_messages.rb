class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name, default: ""
      t.string :email, default: ""
      t.text :body, default: ""
      t.text :ideas, default: ""
  
      t.timestamps
    end
  end
end
