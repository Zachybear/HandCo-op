class CreateToolListings < ActiveRecord::Migration
  def change
    create_table :tool_listings do |t|
      t.references :user, index: true
      t.references :tool, index: true

      t.timestamps
    end
  end
end
