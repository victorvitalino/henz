class VehicleTypesController < ApplicationController
  before_action :set_vehicle_type, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_types
  def index
    @vehicle_types = VehicleType.all
  end

  # GET /vehicle_types/1
  def show
  end

  # GET /vehicle_types/new
  def new
    @vehicle_type = VehicleType.new
  end

  # GET /vehicle_types/1/edit
  def edit
  end

  # POST /vehicle_types
  def create
    @vehicle_type = VehicleType.new(vehicle_type_params)

    if @vehicle_type.save
      redirect_to @vehicle_type, notice: 'Vehicle type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /vehicle_types/1
  def update
    if @vehicle_type.update(vehicle_type_params)
      redirect_to @vehicle_type, notice: 'Vehicle type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /vehicle_types/1
  def destroy
    @vehicle_type.destroy
    redirect_to vehicle_types_url, notice: 'Vehicle type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_type
      @vehicle_type = VehicleType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vehicle_type_params
      params.require(:vehicle_type).permit(:name, :description, :status)
    end
end
