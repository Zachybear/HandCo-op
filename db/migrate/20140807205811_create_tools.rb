class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :title

      t.timestamps
    end
  end
end
