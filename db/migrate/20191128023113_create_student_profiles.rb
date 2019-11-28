class CreateStudentProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :student_profiles do |t|
      t.string :name
      t.string :age_group
      t.references :students
      t.timestamps
    end
  end
end
