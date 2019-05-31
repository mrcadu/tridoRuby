class EquilibriosController < ApplicationController
  before_action :set_equilibrio, only: [:show, :update, :destroy]

  # GET /equilibrios
  def index
    @equilibrios = Equilibrio.all

    render json: @equilibrios
  end

  # GET /equilibrios/1
  def show
    render json: @equilibrio
  end

  # POST /equilibrios
  def create
    @equilibrio = Equilibrio.new(equilibrio_params)

    if @equilibrio.save
      render json: @equilibrio, status: :created, location: @equilibrio
    else
      render json: @equilibrio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /equilibrios/1
  def update
    if @equilibrio.update(equilibrio_params)
      render json: @equilibrio
    else
      render json: @equilibrio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /equilibrios/1
  def destroy
    @equilibrio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equilibrio
      @equilibrio = Equilibrio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def equilibrio_params
      params.require(:equilibrio).permit(:Mental, :Fisico, :Espiritual, :Emocional)
    end
end
