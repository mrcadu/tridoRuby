class PapeisController < ApplicationController
  before_action :set_papel, only: [:show, :update, :destroy]

  # GET /papeis
  def index
    @papeis = Papel.all

    render json: @papeis
  end

  # GET /papeis/1
  def show
    render json: @papel
  end

  # POST /papeis
  def create
    @papel = Papel.new(papel_params)

    if @papel.save
      render json: @papel, status: :created, location: @papel
    else
      render json: @papel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /papeis/1
  def update
    if @papel.update(papel_params)
      render json: @papel
    else
      render json: @papel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /papeis/1
  def destroy
    @papel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_papel
      @papel = Papel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def papel_params
      params.require(:papel).permit(:nome)
    end
end
