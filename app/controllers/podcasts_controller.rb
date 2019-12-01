class PodcastsController < ApplicationController
  before_action :set_podcast, only: [:show, :edit, :update, :destroy]

  # GET /podcasts
  # GET /podcasts.json
  def index
    @podcasts = Podcast.all
    # render json: @podcast
  end

  def durations
    @durations = Duration.all
    render json: @durations
  end

  def allpodcasts
    @podcasts = Podcast.all
    render json: @podcasts
  end

  # GET /podcasts/1
  # GET /podcasts/1.json
  def show
    @podcast = Podcast.find(params[:id])
    # render json: @podcast
  end

  def x
    @podcast = Podcast.find(params[:id])
    render json: @podcast
  end

  def save
    p "HIIIIIIIIIIIIIIIIIIIII", params[:id].to_i
    p "current student id", current_student.id
    @podcastID = params[:id].to_i
    @studentid = current_student.id
    @saveForLater = StudentProfilePodcast.new(:podcasts_id => @podcastID, :student_profiles_id => @studentid)
    if @saveForLater.save!
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
    @student_profile = StudentProfile.find_by(:students_id => current_student.id)
    @podcast = Podcast.find(params[:pid])
    p "podcast id isss", @podcast.id
    @studentID = current_student.id
    p "student id isss", @studentID
    @selectedentry = StudentProfilePodcast.find_by(:student_profiles_id => @studentID, :podcasts_id => @podcast.id)
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
