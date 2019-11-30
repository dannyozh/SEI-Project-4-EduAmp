class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|
      t.references :educator_profiles
      t.string :podcast_title
      t.text :podcast_photo
      t.integer :season_no
      t.integer :episode_no
      t.string :age_group
      t.string :category
      t.string :actual_length
      t.string :duration
      t.text :url
      t.text :description
      t.timestamps
    end
  end
end
