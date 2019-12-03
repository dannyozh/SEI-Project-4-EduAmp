class LandingsController < ApplicationController
  def landing
    if current_student
      @student_profile = StudentProfile.find_by(:student_id => current_student.id)
      id = current_student.id
      url = "/student_profiles/" + id.to_s
      redirect_to url
      # redirect_to "/student_profiles/1"
    end
  end
end
