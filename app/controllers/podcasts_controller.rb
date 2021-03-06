class PodcastsController < ApplicationController
  before_action :set_podcast, only: [:show, :edit, :update, :destroy]

  # GET /podcasts
  # GET /podcasts.json
  def index
    @podcasts = Podcast.all
    # render json: @podcast
    if current_student
      @student_profile = StudentProfile.find_by(:student_id => current_student.id)
    end
  end

  def durations
    @durations = Duration.all
    render json: @durations
  end

  def allpodcasts
    @podcasts = Podcast.all.order("RANDOM()")
    render json: @podcasts
  end

  # GET /podcasts/1
  # GET /podcasts/1.json
  def show
    @podcast = Podcast.find(params[:id])
    # render json: @podcast
    if current_student
      @student_profile = StudentProfile.find_by(:student_id => current_student.id)
    end
  end

  def x
    @podcast = Podcast.find(params[:id])
    render json: @podcast
  end

  def podcastauthor
    @podcast = Podcast.find(params[:id])
    @author = EducatorProfile.where(:id => @podcast.educator_profile_id)
    render json: @author
    p "AUTHOR ISSSS", @author
  end

  def save
    p "HIIIIIIIIIIIIIIIIIIIII", params[:id].to_i
    p "current student id", current_student.id
    @podcastID = params[:id].to_i
    @studentid = current_student.id
    @saveForLater = StudentProfilePodcast.new(:podcast_id => @podcastID, :student_profile_id => @studentid)
    if @saveForLater.save!
      p "SAVEDDDD"
    else
      p "NOT SAVED :(:("
    end
  end

  def subscribe
    p "HIIIIIIIIIIIIIIIIIIIII", params[:id].to_i
    @authorID = params[:id].to_i
    @studentid = current_student.id
    @subscribe = EducatorProfileStudentProfile.new(:educator_profile_id => @authorID, :student_profile_id => @studentid)
    if @subscribe.save!
      p "SAVEDDDD"
    else
      p "NOT SAVED :(:("
    end
  end

  # GET /podcasts/new
  def new
    @podcast = Podcast.new
  end

  # GET /podcasts/1/edit
  def edit
  end

  # POST /podcasts
  # POST /podcasts.json
  def create
    @podcast = Podcast.new(podcast_params)

    respond_to do |format|
      if @podcast.save
        format.html { redirect_to @podcast, notice: "Podcast was successfully created." }
        format.json { render :show, status: :created, location: @podcast }
      else
        format.html { render :new }
        format.json { render json: @podcast.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroyentry
    @student_profile = StudentProfile.find_by(:student_id => current_student.id)
    @podcast = Podcast.find(params[:pid])
    p "podcast id isss", @podcast.id
    @studentID = current_student.id
    p "student id isss", @studentID
    @selectedentry = StudentProfilePodcast.find_by(:student_profile_id => @studentID, :podcast_id => @podcast.id)
    if @selectedentry.destroy
      redirect_to @student_profile
      p "DESTROYEEDEDE"
    end
  end

  def destroysubscribe
    @student_profile = StudentProfile.find_by(:student_id => current_student.id)
    @educator = EducatorProfile.find(params[:eid])
    @studentID = current_student.id
    @selectedentry = EducatorProfileStudentProfile.find_by(:student_profile_id => @studentID, :educator_profile_id => @educator.id)
    if @selectedentry.destroy
      redirect_to @student_profile
    end
  end

  # PATCH/PUT /podcasts/1
  # PATCH/PUT /podcasts/1.json
  def update
    respond_to do |format|
      if @podcast.update(podcast_params)
        format.html { redirect_to @podcast, notice: "Podcast was successfully updated." }
        format.json { render :show, status: :ok, location: @podcast }
      else
        format.html { render :edit }
        format.json { render json: @podcast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /podcasts/1
  # DELETE /podcasts/1.json
  def destroy
    @podcast.destroy
    respond_to do |format|
      format.html { redirect_to podcasts_url, notice: "Podcast was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_podcast
    @podcast = Podcast.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def podcast_params
    params.fetch(:podcast, {})
  end
end
