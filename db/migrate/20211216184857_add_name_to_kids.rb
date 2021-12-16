class AddNameToKids < ActiveRecord::Migration[6.1]
  def change
    add_column :kids, :name, :string
  end
end
