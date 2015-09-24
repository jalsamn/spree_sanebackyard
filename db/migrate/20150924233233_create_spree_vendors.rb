class CreateSpreeVendors < ActiveRecord::Migration
  def change
    create_table :spree_vendors do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :phone
      t.string :fax
      t.boolean :active
      t.integer :leadtimedays

      t.timestamps null: false
    end
  end
end
