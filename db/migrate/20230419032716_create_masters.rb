class CreateMasters < ActiveRecord::Migration[7.0]
  def change
    create_table :masters do |t|
      t.references :currency, null: false, foreign_key: true
      t.decimal :denomination
      t.references :overprint_currency, null: false, foreign_key: true
      t.decimal :overprint_denomination
      t.string :obverse
      t.string :reverse
      t.references :printer, null: false, foreign_key: true
      t.references :features, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true
      t.integer :width
      t.integer :height
      t.date :printed

      t.timestamps
    end
  end
end
