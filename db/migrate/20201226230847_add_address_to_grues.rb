class AddAddressToGrues < ActiveRecord::Migration[6.0]
  def change
    add_column :grues, :address, :string
  end
end
