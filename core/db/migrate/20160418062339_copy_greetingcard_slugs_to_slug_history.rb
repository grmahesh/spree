class CopyGreetingcardSlugsToSlugHistory < ActiveRecord::Migration
  def change
    
    # do what sql does best: copy all slugs into history table in a single query
	# rather than load potentially millions of Greetingcards into memory
	Spree::Greetingcard.connection.execute <<-SQL
INSERT INTO #{FriendlyId::Slug.table_name} (slug, sluggable_id, sluggable_type, created_at)
  SELECT slug, id, '#{Spree::Greetingcard.to_s}', #{ActiveRecord::Base.send(:sanitize_sql_array, ['?', Time.current])} 
  FROM #{Spree::Greetingcard.table_name}
  WHERE slug IS NOT NULL
  ORDER BY id
SQL

  end
end
