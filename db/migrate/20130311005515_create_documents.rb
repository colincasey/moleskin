class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title, :required => true

      t.timestamps
    end
  end
end
