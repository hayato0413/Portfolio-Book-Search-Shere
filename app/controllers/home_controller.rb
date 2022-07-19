class HomeController < ApplicationController
  def index
  end

  def category
  end

  def notice
  end

  def plan
    @plans = Plan.all
  end

  def readout
  end
end
