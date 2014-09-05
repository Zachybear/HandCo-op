class SkillListingsController < ApplicationController
  before_action :set_skill_listing, only: [:destroy]

  # POST /skill_listings
  # POST /skill_listings.json
  def create
    @skill_listing = SkillListing.new(skill_id: params[:skill_id], user_id: current_user.id)

    respond_to do |format|
      if @skill_listing.save
        format.html { redirect_to @skill_listing, notice: 'Skill listing was successfully created.' }
        format.json { render :show, status: :created, location: @skill_listing }
      else
        format.html { render :new }
        format.json { render json: @skill_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_listings/1
  # DELETE /skill_listings/1.json
  def destroy
    @skill_listing.destroy
    respond_to do |format|
      format.html { redirect_to skill_listings_url, notice: 'Skill listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_listing
      @skill_listing = SkillListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_listing_params
      params[:skill_listing]
    end
end
