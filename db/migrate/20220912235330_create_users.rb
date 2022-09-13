class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :comments
      t.string :hobbies
      t.text :description
      t.string :jobs
      t.string :studies

      t.timestamps
    end
  end
end
