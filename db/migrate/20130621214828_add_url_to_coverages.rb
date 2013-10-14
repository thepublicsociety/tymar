class AddUrlToCoverages < ActiveRecord::Migration
  def change
    add_column :coverages, :url, :string
  end
end
