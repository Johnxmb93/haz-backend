class AddKidsEnrolledToParents < ActiveRecord::Migration[6.1]
  def change
    add_column :parents, :kids_enrolled, :string
    add_column :parents, :payment_status, :string
  end
end
