class CreateDistances < ActiveRecord::Migration[5.0]
  def change
    create_table :distances do |t|
      t.string :city
      t.float :distance
      t.float :force

      t.timestamps
    end
  end
end
