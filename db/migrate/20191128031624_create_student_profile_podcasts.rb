class CreateStudentProfilePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :student_profile_podcasts do |t|
      t.references :student_profiles
      t.references :podcasts
      t.boolean :listen_again, default: false
      t.timestamps
    end
  end
end
