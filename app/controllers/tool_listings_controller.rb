class ToolListingsController < ApplicationController
  before_action :set_tool_listing, only: [:destroy]

  # POST /tool_listings
  # POST /tool_listings.json
  def create
    @tool_listing = ToolListing.new(tool_id: params[:tool_id], user_id: current_user.id)

    respond_to do |format|
      if @tool_listing.save
        format.html { redirect_to @tool_listing, notice: 'Tool listing was successfully created.' }
        format.json { render :show, status: :created, location: @tool_listing }
      else
        format.html { render :new }
        format.json { render json: @tool_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tool_listings/1
  # DELETE /tool_listings/1.json
  def destroy
    @tool_listing.destroy
    respond_to do |format|
      format.html { redirect_to tool_listings_url, notice: 'Tool listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tool_listing
      @tool_listing = ToolListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tool_listing_params
      params[:tool_listing]
    end
end
