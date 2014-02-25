class TravelPackagesController < ApplicationController
  before_action :set_travel_package, only: [:show, :edit, :update, :destroy]

  # GET /travel_packages
  # GET /travel_packages.json
  def index
    @travel_packages = TravelPackage.all
  end

  # GET /travel_packages/1
  # GET /travel_packages/1.json
  def show
  end

  # GET /travel_packages/new
  def new
    @travel_package = TravelPackage.new
  end

  # GET /travel_packages/1/edit
  def edit
  end

  # POST /travel_packages
  # POST /travel_packages.json
  def create
    @travel_package = TravelPackage.new(travel_package_params)

    respond_to do |format|
      if @travel_package.save
        format.html { redirect_to @travel_package, notice: 'Travel package was successfully created.' }
        format.json { render action: 'show', status: :created, location: @travel_package }
      else
        format.html { render action: 'new' }
        format.json { render json: @travel_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_packages/1
  # PATCH/PUT /travel_packages/1.json
  def update
    respond_to do |format|
      if @travel_package.update(travel_package_params)
        format.html { redirect_to @travel_package, notice: 'Travel package was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @travel_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_packages/1
  # DELETE /travel_packages/1.json
  def destroy
    @travel_package.destroy
    respond_to do |format|
      format.html { redirect_to travel_packages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_package
      @travel_package = TravelPackage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_package_params
      params.require(:travel_package).permit(:price)
    end
end
