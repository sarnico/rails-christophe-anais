class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = Appointment.all

    @my_appointments = Appointment.where(["user_id=?", current_user.id])

    @appointmentsbooked = Booked.date(current_user)
  end

  def show;end

  def new
    @user = User.new
    @appointmentsbooked = Booked.date(current_user)
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)

    if current_user.email != "anais_christophe@hotmail.com"
        @appointment.user_id = current_user.id
    elsif current_user.email == "anais_christophe@hotmail.com"
        @appointment.user_id = User.last.id
    end


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
    redirect_to home_path
  end

  private


  def set_appointment
    @appointment = Appointment.find(params[:id])

  end

  def appointment_params
    params.require(:appointment).permit(:date, :user_id)
  end

end
