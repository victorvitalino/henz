class AffiliatesController < ApplicationController
  before_action :set_affiliate, only: [:show, :edit, :update, :destroy]

  # GET /affiliates
  def index
    @affiliates = Affiliate.all
  end

  # GET /affiliates/1
  def show
  end

  # GET /affiliates/new
  def new
    @affiliate = Affiliate.new
  end

  # GET /affiliates/1/edit
  def edit
  end

  # POST /affiliates
  def create
    @affiliate = Affiliate.new(affiliate_params)

    if @affiliate.save
      redirect_to @affiliate, notice: 'Affiliate was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /affiliates/1
  def update
    if @affiliate.update(affiliate_params)
      redirect_to @affiliate, notice: 'Affiliate was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /affiliates/1
  def destroy
    @affiliate.destroy
    redirect_to affiliates_url, notice: 'Affiliate was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_affiliate
      @affiliate = Affiliate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def affiliate_params
      params.require(:affiliate).permit(:cep, :responsible, :geolocation, :city_id, :state_id)
    end
end
