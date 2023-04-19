class CreateMasterFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :master_features do |t|
      t.string :name

      t.timestamps
    end

    create_join_table :masters, :master_features
  end
end
