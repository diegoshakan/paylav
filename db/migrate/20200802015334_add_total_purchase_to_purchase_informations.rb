class AddTotalPurchaseToPurchaseInformations < ActiveRecord::Migration[6.0]
  def change
    add_column :purchase_informations, :total_purchase, :float
  end
end
