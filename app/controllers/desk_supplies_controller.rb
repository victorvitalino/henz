class DeskSuppliesController < ApplicationController
  before_action :set_desk_supply, only: [:show, :edit, :update, :destroy]

  # GET /desk_supplies
  def index
    @desk_supplies = DeskSupplie.all
  end

  # GET /desk_supplies/1
  def show
  end

  # GET /desk_supplies/new
  def new
    @desk_supply = DeskSupplie.new
  end

  # GET /desk_supplies/1/edit
  def edit
  end

  # POST /desk_supplies
  def create
    @desk_supply = DeskSupplie.new(desk_supply_params)

    if @desk_supply.save
      redirect_to @desk_supply, notice: 'Desk supplie was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /desk_supplies/1
  def update
    if @desk_supply.update(desk_supply_params)
      redirect_to @desk_supply, notice: 'Desk supplie was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /desk_supplies/1
  def destroy
    @desk_supply.destroy
    redirect_to desk_supplies_url, notice: 'Desk supplie was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desk_supply
      @desk_supply = DeskSupplie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def desk_supply_params
      params.require(:desk_supply).permit(:name, :address, :telphone, :geolocation, :city_id, :state_id)
    end
end
