class CreateProbations < ActiveRecord::Migration
  def change
    create_table :probations do |t|
      t.string :staj_yeri
      t.string :tur
      t.date :tarih

      t.timestamps
    end
  end
end
