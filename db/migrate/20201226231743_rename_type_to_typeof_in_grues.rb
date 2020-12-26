class RenameTypeToTypeofInGrues < ActiveRecord::Migration[6.0]
  def change
    rename_column :grues, :type, :typeof
  end
end
