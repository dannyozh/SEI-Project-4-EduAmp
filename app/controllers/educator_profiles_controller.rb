class EducatorProfilesController < ApplicationController
  before_action :set_educator_profile, only: [:show, :edit, :update, :destroy]

  # GET /educator_profiles
  # GET /educator_profiles.json
  def index
    @educator_profiles = EducatorProfile.all
  end

  # GET /educator_profiles/1
  # GET /educator_profiles/1.json
  def show
    @educator_profile = EducatorProfile.find_by(:id => params[:id])
    @educatorpodcast = Podcast.where(:educator_profile_id => @educator_profile.id)
    # @requiredPodcast = Podcast.where(:id => @educatorpodcast)
    p "educator's podcasts are", @educatorpodcast
  end

  # GET /educator_profiles/new
  def new
    @educator_profile = EducatorProfile.new
  end

  # GET /educator_profiles/1/edit
  def edit
  end

  # POST /educator_profiles
  # POST /educator_profiles.json
  def create
    @educator_profile = EducatorProfile.new(educator_profile_params)

    respond_to do |format|
      if @educator_profile.save
        format.html { redirect_to @educator_profile, notice: "Educator profile was successfully created." }
        format.json { render :show, status: :created, location: @educator_profile }
      else
        format.html { render :new }
        format.json { render json: @educator_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educator_profiles/1
  # PATCH/PUT /educator_profiles/1.json
  def update
    respond_to do |format|
      if @educator_profile.update(educator_profile_params)
        format.html { redirect_to @educator_profile, notice: "Educator profile was successfully updated." }
        format.json { render :show, status: :ok, location: @educator_profile }
      else
        format.html { render :edit }
        format.json { render json: @educator_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educator_profiles/1
  # DELETE /educator_profiles/1.json
  def destroy
    @educator_profile.destroy
    respond_to do |format|
      format.html { redirect_to educator_profiles_url, notice: "Educator profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_educator_profile
    @educator_profile = EducatorProfile.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def educator_profile_params
    params.fetch(:educator_profile, {})
  end
end
