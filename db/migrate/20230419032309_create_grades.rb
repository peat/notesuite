class CreateGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :grades do |t|
      t.string :name
      t.string :full_name
      t.string :description

      t.timestamps
    end
  end
end
