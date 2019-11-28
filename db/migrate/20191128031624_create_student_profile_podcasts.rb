class CreateStudentProfilePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :student_profile_podcasts do |t|
      t.references :student_profiles
      t.references :podcasts
      t.boolean :liked, default: false
      t.text :comment
      t.timestamps
    end
  end
end
