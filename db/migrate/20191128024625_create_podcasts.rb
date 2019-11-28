class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|
      t.references :educator_profiles
      t.string :name
      t.string :category
      t.string :actual_length
      t.string :duration
      t.text :url
      t.text :description
      t.timestamps
    end
  end
end
