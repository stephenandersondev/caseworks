class SessionsController < ApplicationController
  def signin
    @social_worker = SocialWorker.new
  end

  def authenticated?
    if session[:id] != nil
      @social_worker = SocialWorker.find(session[:id])
    else
      redirect_to "/signin"
    end
  end

  def create
    @social_worker = SocialWorker.find_by(email: params[:user][:email])
    if @social_worker && @social_worker.authenticate(params[:user][:password])
        session[:id] = @social_worker.id
        redirect_to '/cases'
    else
        flash[:errors] = "Incorrect Email of Password"
        redirect_to '/signin'
    end
  end

  def destroy
    session.clear
    redirect_to '/signin'
  end

  private

  def social_worker_params
    params.require(:social_worker).permit(:name, :phone_number, :image_url, :location, :email, :specialty)
  end
end
