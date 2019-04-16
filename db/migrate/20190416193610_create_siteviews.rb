class CreateSiteviews < ActiveRecord::Migration[5.2]
  def change
    create_table :siteviews do |t|
      t.string :ip

      t.timestamps
    end
  end
end
