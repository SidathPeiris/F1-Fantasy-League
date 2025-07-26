require_relative '../models/f1_driver_list'

class FantasyTeamController < ApplicationController
  def index
    @drivers = F1_DRIVERS_2025
  end
end
