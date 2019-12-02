class CreateStudentProfilePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :student_profile_podcasts do |t|
      t.references :student_profile
      t.references :podcast
      t.timestamps
    end
  end
end
