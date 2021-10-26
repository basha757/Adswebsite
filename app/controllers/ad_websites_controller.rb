class AdWebsitesController < ApplicationController
  before_action :set_ad_website, only: %i[ show edit update destroy ]

  # GET /ad_websites or /ad_websites.json
  def index
    @ad_websites = AdWebsite.all
  end

  # GET /ad_websites/1 or /ad_websites/1.json
  def show
  end

  # GET /ad_websites/new
  def new
    @ad_website = AdWebsite.new
  end

  # GET /ad_websites/1/edit
  def edit
  end

  # POST /ad_websites or /ad_websites.json
  def create
    @ad_website = AdWebsite.new(ad_website_params)

    respond_to do |format|
      if @ad_website.save
        format.html { redirect_to @ad_website, notice: "Ad website was successfully created." }
        format.json { render :show, status: :created, location: @ad_website }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ad_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ad_websites/1 or /ad_websites/1.json
  def update
    respond_to do |format|
      if @ad_website.update(ad_website_params)
        format.html { redirect_to @ad_website, notice: "Ad website was successfully updated." }
        format.json { render :show, status: :ok, location: @ad_website }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ad_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_websites/1 or /ad_websites/1.json
  def destroy
    @ad_website.destroy
    respond_to do |format|
      format.html { redirect_to ad_websites_url, notice: "Ad website was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_website
      @ad_website = AdWebsite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ad_website_params
      params.require(:ad_website).permit(:Name, :Name_of_Bussiness, :Email, :Phone_No , :user_id, :image)
    end
end
