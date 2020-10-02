class SessionsController < ApplicationController
  layout false, except: [:dashboard]

  def new
    @social_worker = SocialWorker.new
  end

  def authenticated?
    if session[:id] != nil
      @social_worker = SocialWorker.find(session[:id])
    else
      redirect_to "/login"
    end
  end

  def create
    @social_worker = SocialWorker.find_by(email: params[:social_worker][:email])
    if @social_worker && @social_worker.authenticate(params[:social_worker][:password])
      session[:id] = @social_worker.id
      redirect_to "/dashboard"
    else
      flash[:errors] = "Incorrect Email of Password"
      redirect_to "/login"
    end
  end

  def destroy
    session.clear
    redirect_to "/welcome"
  end

  def dashboard
    @mycases = Case.where(social_worker_id: session[:id], status: "open")
    render "dashboard"
  end

  def welcome
    render "welcome"
  end

  private

  def social_worker_params
    params.require(:social_worker).permit(:name, :phone_number, :image_url, :location, :email, :specialty)
  end
end
