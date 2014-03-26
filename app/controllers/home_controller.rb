class HomeController < ApplicationController
  before_action :check_admin_logged, only: [:admin_links]

  def index
  end

  def admin_links
  end

  private

  	def check_admin_logged
      redirect_to new_user_session_path unless user_signed_in? and current_user.try(:admin) 
    end
end
