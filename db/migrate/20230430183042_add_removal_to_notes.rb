class AddRemovalToNotes < ActiveRecord::Migration[7.0]
  def change
    add_column :notes, :removed_on, :date
    add_column :notes, :replaced_by_id, :integer
    add_column :notes, :removal_notes, :string
  end
end
