class CreateEducatorProfileStudentProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :educator_profile_student_profiles do |t|
      t.references :student_profile
      t.references :educator_profile
      t.timestamps
    end
  end
end
