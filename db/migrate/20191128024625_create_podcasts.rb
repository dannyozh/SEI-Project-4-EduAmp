class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|
      t.references :educator_profile
      t.string :podcast_title
      t.string :category
      t.string :date
      t.text :podcast_photo
      t.integer :episode_no
      t.string :episode_name
      t.string :actual_length
      t.text :url
      t.text :description
      t.string :age_group
      t.string :duration
      t.timestamps
    end
  end
end
