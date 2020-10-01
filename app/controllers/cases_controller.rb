class CasesController < ApplicationController
  def index
    @cases = Case.all
  end

  def show
    @case = Case.find(params[:id])
  end

  def new
    @case = Case.new
    @social_workers = SocialWorker.all
    @clients = Client.all
    @resources = Resource.all
  end

  def create
    @case = Case.new(case_params)
    if @case.valid?
      @case.save
      redirect_to case_path(@case)
    else
      flash[:errors] = @case.errors.full_messages
      redirect_to new_case_path
    end
  end

  def edit
    @case = Case.find(params[:id])
    @social_workers = SocialWorker.all
    @clients = Client.all
    @resources = Resource.all
  end

  def update
    @case = Case.find(params[:id])
    @case.update(case_params)
    if @case.valid?
      @case.save
      redirect_to case_path(@case)
    else
      flash[:errors] = @case.errors.full_messages
      redirect_to new_case_path
    end
  end

  def close
    @case = Case.find(params[:id])
    @case.close_case
    @case.save
    redirect_to case_path(@case)
  end

  private

  def case_params
    params.require(:case).permit(:client_id, :social_worker_id, :resource_id, :focus)
  end
end
