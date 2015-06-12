class ProviderTypesController < ApplicationController
  before_action :set_provider_type, only: [:show, :edit, :update, :destroy]

  # GET /provider_types
  def index
    @provider_types = ProviderType.all
  end

  # GET /provider_types/1
  def show
  end

  # GET /provider_types/new
  def new
    @provider_type = ProviderType.new
  end

  # GET /provider_types/1/edit
  def edit
  end

  # POST /provider_types
  def create
    @provider_type = ProviderType.new(provider_type_params)

    if @provider_type.save
      redirect_to @provider_type, notice: 'Provider type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /provider_types/1
  def update
    if @provider_type.update(provider_type_params)
      redirect_to @provider_type, notice: 'Provider type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /provider_types/1
  def destroy
    @provider_type.destroy
    redirect_to provider_types_url, notice: 'Provider type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider_type
      @provider_type = ProviderType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def provider_type_params
      params.require(:provider_type).permit(:name, :status)
    end
end
