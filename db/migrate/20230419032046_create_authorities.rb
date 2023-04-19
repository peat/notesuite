class CreateAuthorities < ActiveRecord::Migration[7.0]
  def change
    create_table :authorities do |t|
      t.string :name
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
