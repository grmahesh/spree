class AddPositionToClassifications < ActiveRecord::Migration
  def change
    add_column :spree_products_taxons, :position, :integer
    add_column :spree_greetingcards_taxons, :position, :integer
  end
end
