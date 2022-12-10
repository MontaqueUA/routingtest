class HomeController < ApplicationController
  def index
  end

  def assigning
    @routes=current_user.organization.routes.all
    @vehicles=current_user.organization.vehicles.all
    @drivers=current_user.organization.drivers.all
  end
  def update_assign

  end
  def available_vehicles
  end

  def simple_login
  end
end