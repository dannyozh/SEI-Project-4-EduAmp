class EducatorProfileStudentProfile < ApplicationRecord
  belongs_to :educator_profile
  belongs_to :student_profile
end
