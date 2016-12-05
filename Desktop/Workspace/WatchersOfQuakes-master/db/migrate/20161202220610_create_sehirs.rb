class CreateSehirs < ActiveRecord::Migration[5.0]
  def change
    create_table :sehir do |t|
      t.string :sehir_isim

      t.timestamps
    end
  end
end
