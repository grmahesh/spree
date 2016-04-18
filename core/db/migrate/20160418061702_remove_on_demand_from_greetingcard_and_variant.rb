class RemoveOnDemandFromGreetingcardAndVariant < ActiveRecord::Migration
  def change
    remove_column :spree_products, :on_demand
  end
end
