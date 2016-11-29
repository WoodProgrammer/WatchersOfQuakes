class CreateQuakes < ActiveRecord::Migration[5.0]
  def change
    create_table :quakes do |t|
      t.date :date
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
