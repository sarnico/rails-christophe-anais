class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @appointment = Appointment.new
  end

  def create

    @appointment = Appointment.new(appointment_params)
    @appointment.user_id = current_user.id
    if @appointment.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def appointment_params
    params.require(:appointment).permit(:time,:date)
  end

end
