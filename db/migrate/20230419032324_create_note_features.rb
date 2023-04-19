class CreateNoteFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :note_features do |t|
      t.string :name

      t.timestamps
    end

    create_join_table :notes, :note_features
  end
end
