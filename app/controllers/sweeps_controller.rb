class SweepsController < ApplicationController

  def index
    @sweeps = Sweep.all
  end

  def show
    @sweep = Sweep.find(params[:id])
  end

end
