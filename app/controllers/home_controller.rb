class HomeController < ApplicationController

  def index
    @daily = "Out of chaos comes beauty..."
    redirect_to admin_dashboard_path
  end
end
