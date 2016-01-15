class DownloadController < ApplicationController
  before_filter :authenticate_and_enable_2fa

  def index
    @studies = current_user.studies
  end

  private

  def authenticate_and_enable_2fa
    authenticate_user!
    enable_2fa
  end

  def enable_2fa
    unless current_user.otp_required_for_login?
      flash[:warning] = "You need to enable Two Factor Authentication to continue."
      redirect_to two_factor_path
    end
  end

end
