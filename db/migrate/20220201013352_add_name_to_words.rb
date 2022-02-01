class AddNameToWords < ActiveRecord::Migration[6.1]
  def change
    add_column :words, :name, :string
  end
end
