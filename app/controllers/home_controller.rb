class HomeController < ApplicationController
  def index
  end

  def assigning
    @organization = current_user.user_organizations.find_by(active: true).organization
    @routes=current_user.user_organizations.find_by(active: true).organization.routes.all
    @vehicles=current_user.user_organizations.find_by(active: true, user: current_user).organization.vehicles.all
    @drivers=current_user.user_organizations.find_by(active: true, user: current_user).organization.drivers.all
    # @vehicles_test = available_vehicles_for_routes()
  end
  def update_assign

  end
  def available_vehicles_for_routes
    # @vehicles_for_route= @vehicles.where(@organization.vehicles.routes.starts_at >= @organization.routes.ends_at, @organization.vehicles.routes.ends_at <= @organization.routes.starts_at)
  end

  def simple_login
  end
end