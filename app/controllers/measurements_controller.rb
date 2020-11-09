class MeasurementsController < ApplicationController
  before_action :authenticate_user!

  def index
    @measurements = current_user.measurements
  end

  def new
    @measurement = current_user.measurements.new
  end

  def create
    @measurement = current_user.measurements.new(measurement_params)
    if @measurement.save
      redirect_to user_measurements_path(current_user)
      flash[:alert] = "measurement added"
    else
      redirect_to :new
      flash[:alert] = "measurement added"
    end
  end

  def update
    @measurement = Measurement.find(params[:id])
    @measurement.update(measurment_params)
    redirect_to user_measurements_path(current_user)
  end

  def show
    @measurement = Measurement.find(params[:id])
  end

  def destroy
    @measurement = Measurement.find(params[:id])
    @measurement.destroy
    redirect_to user_measurements_path(current_user)
  end

  private
  def measurement_params
    params.require(:measurement).permit(:weight, :neck, :arm, :chest, :waist, :belly, :hips, :thighs, :calves, :ankles)
  end
end
