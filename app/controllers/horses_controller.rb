class HorsesController < ApplicationController
  handles_sortable_columns
  before_filter :authenticate, except: [:index]

  def index
    order = sortable_column_order
    @horses = Horse.order(order)
  end

  def show
    @horses = Horse.all.order('id asc')
  end

  def edit
    @horse = Horse.find(params[:id])
  end

  def update
    @horse = Horse.find(params[:id])
    @horse.update(horse_params)
    redirect_to @horses, notice: "Updated record!"
  end

  def assign_horse
    backer = params[:horse]
    sweep = params[:sweep_id]
    horse = Horse.find_random_horse(sweep)
    if horse == nil
      redirect_to root_path, notice: "No horses left"
    else
      horse.assigned = true
      horse.bname = backer
      horse.save
      redirect_to root_path, notice: "#{horse.hname} assigned to #{horse.bname}!"
    end
  end

  def horse_params
    params.require(:horse).permit(:hname, :trainer, :odds, :assigned, :bname, :hnumber)
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "william" && password == "Infront01"
    end
  end



end
