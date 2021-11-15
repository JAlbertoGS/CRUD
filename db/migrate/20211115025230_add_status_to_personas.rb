class AddStatusToPersonas < ActiveRecord::Migration[6.1]
  def change
    add_column :personas, :status, :string
  end
end
