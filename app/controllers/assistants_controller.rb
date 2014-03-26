class AssistantsController < ApplicationController
  before_action :set_assistant, only: [:show, :edit, :update, :destroy]
  before_action :check_admin_logged

  # GET /assistants
  # GET /assistants.json
  def index
    @bus = Bus.find(params[:bus_id])
    @assistants = @bus.assistant unless @bus.nil?
  end

  # GET /assistants/1
  # GET /assistants/1.json
  def show
  end

  # GET /assistants/new
  def new
    @bus = Bus.find(params[:bus_id])
    @assistant = Assistant.new
  end

  # GET /assistants/1/edit
  def edit
  end

  # POST /assistants
  # POST /assistants.json
  def create
    @assistant = Assistant.new(assistant_params)
    @assistant.bus_id = params[:bus_id]

    respond_to do |format|
      if @assistant.save
        format.html { redirect_to buses_path }
        format.json { render action: 'show', status: :created, location: @assistant }
      else
        format.html { render action: 'new' }
        format.json { render json: @assistant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assistants/1
  # PATCH/PUT /assistants/1.json
  def update
    respond_to do |format|
      if @assistant.update(assistant_params)
        format.html { redirect_to @assistant, notice: 'Assistant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @assistant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assistants/1
  # DELETE /assistants/1.json
  def destroy
    @assistant.destroy
    respond_to do |format|
      format.html { redirect_to assistants_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assistant
      @bus = Bus.find(params[:bus_id])
      @assistant = Assistant.find(params[:id])
    end
  
    def check_admin_logged
      redirect_to new_user_session_path unless user_signed_in? and current_user.try(:admin) 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assistant_params
      params.require(:assistant).permit(:name, :birth_date, :salary, :gender, :phone, :email)
    end
end
