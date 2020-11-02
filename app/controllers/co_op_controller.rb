class CoOpController < ApplicationController
  def index
    @co_ops = CoOp.all
  end

  def show
    @workers = CoOpWorker.where(co_op_id: params[:id])
    @co_op = CoOp.find(params[:id])
  end

  def new
    @co_op = CoOp.new
  end

  def create
    new_co_op = CoOp.create(coop_params)
    redirect_to co_op_path(new_co_op.id)
  end

  def edit
    @co_op = CoOp.find(params[:id])
  end

  def update
    @co_op = CoOp.find(params[:id])
    @co_op.update(coop_params)
    redirect_to co_op_path(@co_op.id)
  end

  def destroy
    @co_op = CoOp.find(params[:id])
    @co_op.destroy
    redirect_to co_op_index_path
  end

  private

  def coop_params
    params.require(:co_op).permit(:name, :location)
  end

end
