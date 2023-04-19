class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.references :master, null: false, foreign_key: true
      t.references :grade, foreign_key: true
      t.string :notes
      t.string :serial
      t.references :features, null: false, foreign_key: true

      t.timestamps
    end
  end
end
