class AddBreakfastToKids < ActiveRecord::Migration[6.1]
  def change
    add_column :kids, :breakfast, :boolean
  end
end
