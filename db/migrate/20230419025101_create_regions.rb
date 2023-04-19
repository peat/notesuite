class CreateRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :regions do |t|
      t.string :short_name, null: false
      t.string :iso_3166
      t.string :official_name
      t.string :native_name
      t.string :wikipedia_url

      t.timestamps
    end
  end
end
