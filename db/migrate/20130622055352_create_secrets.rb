class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.string :title
      t.text :blurb
      t.text :content
      t.datetime :pubish_date

      t.timestamps
    end
  end
end
