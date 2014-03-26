class BusDriversController < ApplicationController
  before_action :set_bus_driver, only: [:show, :edit, :update, :destroy]
  before_action :check_admin_logged
  
  # GET /bus_drivers
  # GET /bus_drivers.json
  def index
    @bus = Bus.find(params[:bus_id])
    @bus_drivers = @bus.bus_driver unless @bus.nil?
  end

  # GET /bus_drivers/1
  # GET /bus_drivers/1.json
  def show
  end

  # GET /bus_drivers/new
  def new
    @bus = Bus.find(params[:bus_id])
    @bus_driver = BusDriver.new
  end

  # GET /bus_drivers/1/edit
  def edit
  end

  # POST /bus_drivers
  # POST /bus_drivers.json
  def create
    @bus_driver = BusDriver.new(bus_driver_params)
    @bus_driver.bus_id = params[:bus_id]

    respond_to do |format|
      if @bus_driver.save
        format.html { redirect_to buses_path }
        format.json { render action: 'show', status: :created, location: @bus_driver }
      else
        format.html { render action: 'new' }
        format.json { render json: @bus_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bus_drivers/1
  # PATCH/PUT /bus_drivers/1.json
  def update
    respond_to do |format|
      if @bus_driver.update(bus_driver_params)
        format.html { redirect_to @bus_driver, notice: 'Bus driver was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bus_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_drivers/1
  # DELETE /bus_drivers/1.json
  def destroy
    @bus_driver.destroy
    respond_to do |format|
      format.html { redirect_to bus_drivers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bus_driver
      @bus = Bus.find(params[:bus_id])
      @bus_driver = @bus.bus_driver
    end
  
    def check_admin_logged
      redirect_to new_user_session_path unless user_signed_in? and current_user.try(:admin) 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bus_driver_params
       params.require(:bus_driver).permit(:name, :birth_date, :salary, :gender, :phone, :email)
    end
end
