class StudentProfilePodcast < ApplicationRecord
  belongs_to :podcast
  belongs_to :student_profile
end
