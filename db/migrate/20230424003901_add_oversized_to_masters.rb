class AddOversizedToMasters < ActiveRecord::Migration[7.0]
  def change
    change_table :masters do |t|
      t.boolean :oversized
    end
  end
end
