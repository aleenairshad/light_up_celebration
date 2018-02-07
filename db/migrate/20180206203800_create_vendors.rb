class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :cnic
      t.string :number
      t.string :image

      t.timestamps
    end
  end
end
