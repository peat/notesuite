class CreateCurrencies < ActiveRecord::Migration[7.0]
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :iso_4217
      t.string :symbol
      t.references :authority, null: false, foreign_key: true
      t.date :issued_on
      t.date :withdrawn_on
      t.date :lapsed_on

      t.timestamps
    end
  end
end
