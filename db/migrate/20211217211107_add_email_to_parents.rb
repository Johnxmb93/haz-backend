class AddEmailToParents < ActiveRecord::Migration[6.1]
  def change
    add_column :parents, :phone_number, :string
    add_column :parents, :email, :string
    add_column :parents, :password_digest, :string
  end
end
