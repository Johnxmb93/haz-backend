class AddAgetoKids < ActiveRecord::Migration[6.1]
  def change
    add_column :kids, :age, :string
    add_column :kids, :parent_id, :integer
    add_column :kids, :drop_off_time, :string
    add_column :kids, :lunch, :boolean
    add_column :kids, :days_attending, :string
    add_column :kids, :note, :string
  end
end
