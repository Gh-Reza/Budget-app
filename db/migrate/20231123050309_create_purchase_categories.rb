class CreatePurchaseCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :purchase_categories do |t|
      t.references :category, foreign_key: true
      t.references :purchase, foreign_key: true
      t.timestamps
    end
  end
end
