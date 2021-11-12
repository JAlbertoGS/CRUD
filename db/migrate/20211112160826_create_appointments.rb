class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :status
      t.references :persona, null: false, foreign_key: true

      t.timestamps
    end
  end
end
