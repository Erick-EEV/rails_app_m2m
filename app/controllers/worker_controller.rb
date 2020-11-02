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
   # byebug
    @worker = Worker.find(params[:id])
    @worker.update(worker_params)
    redirect_to worker_path(@worker.id)
  end

  def destroy
    @worker=Worker.find(params[:id])
    @worker.destroy
    redirect_to worker_index_path
  end

  
  def create
  end



private
  def worker_params
    params.require(:worker).permit(:name, :city)
  end
end
