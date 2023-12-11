class CreateFechas < ActiveRecord::Migration[7.0]
  def change
    create_table :fechas do |t|

      t.timestamps
    end
  end
end
