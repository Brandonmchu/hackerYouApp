class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :description
      t.string :screenshot_url
      t.string :demo_url
      t.string :technology_used

      t.timestamps
    end
  end
end
