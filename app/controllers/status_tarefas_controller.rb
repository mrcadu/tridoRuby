class StatusTarefasController < ApplicationController
  before_action :set_status_tarefa, only: [:show, :update, :destroy]

  # GET /status_tarefas
  def index
    @status_tarefas = StatusTarefa.all

    render json: @status_tarefas
  end

  # GET /status_tarefas/1
  def show
    render json: @status_tarefa
  end

  # POST /status_tarefas
  def create
    @status_tarefa = StatusTarefa.new(status_tarefa_params)

    if @status_tarefa.save
      render json: @status_tarefa, status: :created, location: @status_tarefa
    else
      render json: @status_tarefa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /status_tarefas/1
  def update
    if @status_tarefa.update(status_tarefa_params)
      render json: @status_tarefa
    else
      render json: @status_tarefa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /status_tarefas/1
  def destroy
    @status_tarefa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_tarefa
      @status_tarefa = StatusTarefa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def status_tarefa_params
      params.require(:status_tarefa).permit(:nome, :codigo)
    end
end
