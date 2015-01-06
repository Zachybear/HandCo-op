class CreateSkillListings < ActiveRecord::Migration
  def change
    create_table :skill_listings do |t|
      t.references :user, index: true
      t.references :skill, index: true

      t.timestamps
    end
  end
end
