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
  end

  def update
    @case.update(case_params)
    if @case.valid?
      @case.save
      redirect_to case_path(@case)
    else
      flash[:errors] = @case.errors.full_messages
      redirect_to new_case_path
    end
  end

  private

  def case_params
    params.require(:case).permit(:client_id, :social_worker_id, :resource_id, :focus, :status)
  end
end
