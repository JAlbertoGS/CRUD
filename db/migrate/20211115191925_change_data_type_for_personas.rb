class ChangeDataTypeForPersonas < ActiveRecord::Migration[6.1]
  def change
    change_column :personas, :date, :date
  end
end
