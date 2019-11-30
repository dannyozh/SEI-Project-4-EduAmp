class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|
      t.references :educator_profiles
      t.string :podcast_title
      t.string :date
      t.text :podcast_photo
      t.integer :episode_no
      t.string :episode_name
      t.string :actual_length
      t.text :url
      t.text :description
      t.timestamps
    end
  end
end
