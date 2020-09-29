class SocialWorkersController < ApplicationController
  before_action :authenticated?, only: [:index, :show]

  def index
    @social_workers = SocialWorker.all
  end

  def show
    @social_worker = SocialWorker.find(params[:id])
  end

  def new
    @social_worker = SocialWorker.new
  end

  def create
    @social_worker = SocialWorker.new(social_worker_params)
    if @social_worker.valid?
      @social_worker.save
      redirect_to social_worker_path(@social_worker)
    else
      flash[:errors] = @social_worker.errors.full_messages
      redirect_to new_social_worker_path
    end
  end

  def edit
    @social_worker = SocialWorker.find(params[:id])
  end

  def update
    @social_worker.update(social_worker_params)
    if @social_worker.valid?
      @social_worker.save
      redirect_to social_worker_path(@social_worker)
    else
      flash[:errors] = @social_worker.errors.full_messages
      redirect_to edit_social_worker_path
    end
  end

  def destroy
    @social_worker = SocialWorker.find(params[:id])
    @social_worker.destroy
    redirect_to social_workers_path
  end

  private

  def social_worker_params
    params.require(:social_worker).permit(:name, :phone_number, :image_url, :email, :specialty)
  end
end
