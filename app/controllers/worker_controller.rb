class WorkerController < ApplicationController
  def index
  end

  def show
  end

  def create
  end

  def edit
  end

private
  def worker_params
    params.require(:workers).permit(:name, :city)
  end
end
