class AddCoordinatesToGrues < ActiveRecord::Migration[6.0]
  def change
    add_column :grues, :latitude, :float
    add_column :grues, :longitude, :float
  end
end
