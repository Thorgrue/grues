class CreateGrues < ActiveRecord::Migration[6.0]
  def change
    create_table :grues do |t|
      t.string :name
      t.string :type
      t.integer :height

      t.timestamps
    end
  end
end
