class StudentProfile < ApplicationRecord
  has_one :student
  has_many :educator_profile_
end
