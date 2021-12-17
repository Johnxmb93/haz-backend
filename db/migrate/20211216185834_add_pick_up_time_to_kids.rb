class AddPickUpTimeToKids < ActiveRecord::Migration[6.1]
  def change
    add_column :kids, :pick_up_time, :string
  end
end
