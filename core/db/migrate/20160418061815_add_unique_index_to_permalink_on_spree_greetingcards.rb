class AddUniqueIndexToPermalinkOnSpreeGreetingcards < ActiveRecord::Migration
  def change
    add_index "spree_greetingcards", ["permalink"], :name => "permalink_idx_unique", :unique => true
  end
end
