class WorkTypesController < ApplicationController
  before_action :set_work_type, only: [:show, :edit, :update, :destroy]

  # GET /work_types
  def index
    @work_types = WorkType.all
  end

  # GET /work_types/1
  def show
  end

  # GET /work_types/new
  def new
    @work_type = WorkType.new
  end

  # GET /work_types/1/edit
  def edit
  end

  # POST /work_types
  def create
    @work_type = WorkType.new(work_type_params)

    if @work_type.save
      redirect_to @work_type, notice: 'Work type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /work_types/1
  def update
    if @work_type.update(work_type_params)
      redirect_to @work_type, notice: 'Work type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /work_types/1
  def destroy
    @work_type.destroy
    redirect_to work_types_url, notice: 'Work type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_type
      @work_type = WorkType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def work_type_params
      params.require(:work_type).permit(:name, :status)
    end
end
