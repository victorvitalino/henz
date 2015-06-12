class CurriculumsController < ApplicationController
  before_action :set_curriculum, only: [:show, :edit, :update, :destroy]

  # GET /curriculums
  def index
    @curriculums = Curriculum.all
  end

  # GET /curriculums/1
  def show
  end

  # GET /curriculums/new
  def new
    @curriculum = Curriculum.new
  end

  # GET /curriculums/1/edit
  def edit
  end

  # POST /curriculums
  def create
    @curriculum = Curriculum.new(curriculum_params)

    if @curriculum.save
      redirect_to @curriculum, notice: 'Curriculum was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /curriculums/1
  def update
    if @curriculum.update(curriculum_params)
      redirect_to @curriculum, notice: 'Curriculum was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /curriculums/1
  def destroy
    @curriculum.destroy
    redirect_to curriculums_url, notice: 'Curriculum was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curriculum
      @curriculum = Curriculum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def curriculum_params
      params.require(:curriculum).permit(:name, :lastname, :email, :phone, :unit, :field, :file)
    end
end
