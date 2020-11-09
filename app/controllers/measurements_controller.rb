class MeasurementsController < ApplicationController
  before_action :authenticate_user!

  def index
    @measurment = current_user.measurments
  end

  def new
    @measurement = current_user.measurments.new
  end

  def create
    @measurement = current_user.measurments.new(measurement_params)
    if @measurement.save
      redirect_to :index
      flash[:alert] = "measurement added"
    else
      redirect_to :new
      flash[:alert] = "measurement added"
    end
  end

  def update
    @measurement = Measurement.find(params[:id])
    @measurement.update(measurment_params)
    redirect_to :index
  end

  def show
    @measurement = Measurement.find(params[:id])
  end

  def destroy
    @measurement = Measurement.find(params[:id])
    @measurement.destroy
    redirect_to :index
  end

  private
  def measurement_params
    params.require(:measurment).permit(:weight, :neck, :arm, :chest, :waist, :belly, :hips, :thighs, :calves, :ankles)
  end
end
