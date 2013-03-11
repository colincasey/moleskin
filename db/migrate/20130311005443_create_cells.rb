class CreateCells < ActiveRecord::Migration
  def change
    create_table :cells do |t|
      t.string :language, :required => true
      t.text :contents
      t.integer :position
      t.timestamps

      t.belongs_to :document
    end
  end
end
