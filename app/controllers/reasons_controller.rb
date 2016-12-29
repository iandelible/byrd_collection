class ReasonsController < ApplicationController
  def index
    
  end
  
  def new
    @reason = Reason.new
  end
end
