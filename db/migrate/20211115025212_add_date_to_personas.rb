class AddDateToPersonas < ActiveRecord::Migration[6.1]
  def change
    add_column :personas, :date, :string
  end
end
