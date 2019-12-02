class CreateEducatorProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :educator_profiles do |t|
      t.string :name
      t.text :description
      t.text :photo_url
      t.references :educator
      t.timestamps
    end
  end
end
