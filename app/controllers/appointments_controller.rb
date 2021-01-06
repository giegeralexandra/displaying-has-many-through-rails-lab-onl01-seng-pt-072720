class AppointmentsController < ApplicationController


    def new
        @appointment = Appointment.new(appointment_params)
    end

    def show 
        @appointment = Appointment.find(params[:id])
    end

    def create 
        appointment = Appointment.create(appointment_params)
        redirect_to appointment_path(appointment)
    end

    def destroy 
        @appointment.find(appointment_params).destroy 
        redirect_to appointments_path 
    end

    private 

    def appointment_params 
        params.require(:appointment).permit(:appointment_datetime, doctor_attributes: [:name, :department], patient_attributes: [:name, :age])
    end

end
