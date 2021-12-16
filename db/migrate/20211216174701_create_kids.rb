class CreateKids < ActiveRecord::Migration[6.1]
  def change
    create_table :kids do |t|

      t.timestamps
    end
  end
end
