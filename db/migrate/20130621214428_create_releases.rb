class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.datetime :publish_date
      t.string :source
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
