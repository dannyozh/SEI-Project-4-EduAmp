class CreateEducatorProfileStudentProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :educator_profile_student_profiles do |t|
      t.references :student_profiles
      t.references :educator_profiles
      t.timestamps
    end
  end
end
