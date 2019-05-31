class MetasController < ApplicationController
  before_action :set_metas, only: [:show, :update, :destroy]

  # GET /meta
  def index
    @metas = Meta.all

    render json: @metas
  end

  # GET /meta/1
  def show
    render json: @meta
  end

  # POST /meta
  def create
    @meta = Meta.new(metas_params)

    if @meta.save
      render json: @meta, status: :created, location: @meta
    else
      render json: @meta.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meta/1
  def update
    if @meta.update(metas_params)
      render json: @meta
    else
      render json: @meta.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meta/1
  def destroy
    @meta.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metas
      @meta = Meta.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def metas_params
      params.require(:meta).permit(:nome)
    end
end
