class CallServicesController < ApplicationController
  before_action :set_call_service, only: [:show, :edit, :update, :destroy]

  # GET /call_services
  # GET /call_services.json
  def index
    @call_services = CallService.all
  end

  # GET /call_services/1
  # GET /call_services/1.json
  def show
  end

  # GET /call_services/new
  def new
    @call_service = CallService.new
  end

  # GET /call_services/1/edit
  def edit
  end

  # POST /call_services
  # POST /call_services.json
  def create
    @call_service = CallService.new(call_service_params)

    respond_to do |format|
      if @call_service.save
        format.html { redirect_to @call_service, notice: 'Call service was successfully created.' }
        format.json { render :show, status: :created, location: @call_service }
      else
        format.html { render :new }
        format.json { render json: @call_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /call_services/1
  # PATCH/PUT /call_services/1.json
  def update
    respond_to do |format|
      if @call_service.update(call_service_params)
        format.html { redirect_to @call_service, notice: 'Call service was successfully updated.' }
        format.json { render :show, status: :ok, location: @call_service }
      else
        format.html { render :edit }
        format.json { render json: @call_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call_services/1
  # DELETE /call_services/1.json
  def destroy
    @call_service.destroy
    respond_to do |format|
      format.html { redirect_to call_services_url, notice: 'Call service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call_service
      @call_service = CallService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def call_service_params
      params.require(:call_service).permit(:id_customer, :id_service, :id_component, :details)
    end
end
