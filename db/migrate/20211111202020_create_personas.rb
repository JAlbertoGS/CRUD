class CreatePersonas < ActiveRecord::Migration[6.1]
  def change
    create_table :personas do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
