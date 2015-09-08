class CreateSpreeCases < ActiveRecord::Migration
  def change
    create_table :spree_cases do |t|
      t.references :variant, index: true, foreign_key: true
      t.date :receivedate
      t.date :expirationdate
      t.decimal :unitpercase
      t.references :vendor, index: true, foreign_key: true
      t.decimal :cost
      t.string :location

      t.timestamps null: false
    end
  end
end
