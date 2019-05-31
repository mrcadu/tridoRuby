class TriadesController < ApplicationController
  before_action :set_triade, only: [:show, :update, :destroy]

  # GET /triades
  def index
    @triades = Triade.all

    render json: @triades
  end

  # GET /triades/1
  def show
    render json: @triade
  end

  # POST /triades
  def create
    @triade = Triade.new(triade_params)

    if @triade.save
      render json: @triade, status: :created, location: @triade
    else
      render json: @triade.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /triades/1
  def update
    if @triade.update(triade_params)
      render json: @triade
    else
      render json: @triade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /triades/1
  def destroy
    @triade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_triade
      @triade = Triade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def triade_params
      params.require(:triade).permit(:Circunstancial, :Importante, :Urgente)
    end
end
