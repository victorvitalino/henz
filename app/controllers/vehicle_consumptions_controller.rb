class VehicleConsumptionsController < ApplicationController
  before_action :set_vehicle_consumption, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_consumptions
  def index
    @vehicle_consumptions = VehicleConsumption.all
  end

  # GET /vehicle_consumptions/1
  def show
  end

  # GET /vehicle_consumptions/new
  def new
    @vehicle_consumption = VehicleConsumption.new
  end

  # GET /vehicle_consumptions/1/edit
  def edit
  end

  # POST /vehicle_consumptions
  def create
    @vehicle_consumption = VehicleConsumption.new(vehicle_consumption_params)

    if @vehicle_consumption.save
      redirect_to @vehicle_consumption, notice: 'Vehicle consumption was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /vehicle_consumptions/1
  def update
    if @vehicle_consumption.update(vehicle_consumption_params)
      redirect_to @vehicle_consumption, notice: 'Vehicle consumption was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /vehicle_consumptions/1
  def destroy
    @vehicle_consumption.destroy
    redirect_to vehicle_consumptions_url, notice: 'Vehicle consumption was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_consumption
      @vehicle_consumption = VehicleConsumption.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vehicle_consumption_params
      params.require(:vehicle_consumption).permit(:vehicle_id, :km_start, :km_end, :gas_liter, :value_liter, :date, :number_notes, :observation, :desk_supplie_id, :driver_id)
    end
end
