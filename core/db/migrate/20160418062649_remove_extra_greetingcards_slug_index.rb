class RemoveExtraGreetingcardsSlugIndex < ActiveRecord::Migration
  def change
    remove_index :spree_greetingcards, name: :permalink_idx_unique
  end
end
