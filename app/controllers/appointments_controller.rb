class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  def index

    @appointments = Appointment.all

    @my_appointments = Appointment.where(params[:user_id]==current_user.id)

  end

  def show
  end

  def new
    @appointmentsbooked = Appointment.all.map {|e|
      {start:e.date.strftime("%FT%T%:z"), end:(e.date + 30.minutes).strftime("%FT%T%:z"), color: '#94969b',title:"réservé"}
    }

    @appointment = Appointment.new

  end

  def create

    @appointment = Appointment.new(appointment_params)
    @appointment.user_id = current_user.id
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @appointment = Appointment.update(appointment_params)
    redirect_to appointment_path
  end

  def destroy
    @appointment.destroy
    redirect_to root_path
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])

  end

  def appointment_params
    params.require(:appointment).permit(:date,:user_id)
  end

end
