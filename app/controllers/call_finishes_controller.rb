class CallFinishesController < ApplicationController
  before_action :set_call_finish, only: [:show, :edit, :update, :destroy]

  # GET /call_finishes
  # GET /call_finishes.json
  def index
    @call_finishes = CallFinish.all
  end

  # GET /call_finishes/1
  # GET /call_finishes/1.json
  def show
  end

  # GET /call_finishes/new
  def new
    @call_finish = CallFinish.new
  end

  # GET /call_finishes/1/edit
  def edit
  end

  # POST /call_finishes
  # POST /call_finishes.json
  def create
    @call_finish = CallFinish.new(call_finish_params)

    respond_to do |format|
      if @call_finish.save
        format.html { redirect_to @call_finish, notice: 'Call finish was successfully created.' }
        format.json { render :show, status: :created, location: @call_finish }
      else
        format.html { render :new }
        format.json { render json: @call_finish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /call_finishes/1
  # PATCH/PUT /call_finishes/1.json
  def update
    respond_to do |format|
      if @call_finish.update(call_finish_params)
        format.html { redirect_to @call_finish, notice: 'Call finish was successfully updated.' }
        format.json { render :show, status: :ok, location: @call_finish }
      else
        format.html { render :edit }
        format.json { render json: @call_finish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call_finishes/1
  # DELETE /call_finishes/1.json
  def destroy
    @call_finish.destroy
    respond_to do |format|
      format.html { redirect_to call_finishes_url, notice: 'Call finish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call_finish
      @call_finish = CallFinish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def call_finish_params
      params.require(:call_finish).permit(:id_call, :id_user, :observation, :active)
    end
end
