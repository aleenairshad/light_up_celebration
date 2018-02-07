class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :cnic
      t.string :number
      t.string :image

      t.timestamps
    end
  end
end
