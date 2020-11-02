class WorkerController < ApplicationController
  def index
    @workers = Worker.all
  end

  def show
    @worker = Worker.find(params[:id])
  end
  
  def edit
    @worker = Worker.find(params[:id])
  end

  def update
    @worker = Worker.find(params[:id])
    @worker.update(params[:id])
    redirect_to worker_path(@worker.id)
  end



  
  def create
  end



private
  def worker_params
    params.require(:workers).permit(:name, :city)
  end
end
