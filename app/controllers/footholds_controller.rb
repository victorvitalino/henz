class FootholdsController < ApplicationController
  before_action :set_foothold, only: [:show, :edit, :update, :destroy]

  # GET /footholds
  def index
    @footholds = Foothold.all
  end

  # GET /footholds/1
  def show
  end

  # GET /footholds/new
  def new
    @foothold = Foothold.new
  end

  # GET /footholds/1/edit
  def edit
  end

  # POST /footholds
  def create
    @foothold = Foothold.new(foothold_params)

    if @foothold.save
      redirect_to @foothold, notice: 'Foothold was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /footholds/1
  def update
    if @foothold.update(foothold_params)
      redirect_to @foothold, notice: 'Foothold was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /footholds/1
  def destroy
    @foothold.destroy
    redirect_to footholds_url, notice: 'Foothold was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foothold
      @foothold = Foothold.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def foothold_params
      params.require(:foothold).permit(:name, :local, :responsible, :geolocation, :observation, :affiliate_id, :work_id)
    end
end
