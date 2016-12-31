class ReasonsController < ApplicationController
  def index
    @reason = Reason.order("RANDOM()").first
  end

  def new
    @reason = Reason.new
  end

  def create
    Reason.create(reason_params)
    redirect_to root_path
  end

  private

  def reason_params
    params.require(:reason).permit(:advantage, :reason)
  end
end
