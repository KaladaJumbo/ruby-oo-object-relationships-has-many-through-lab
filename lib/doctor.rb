require_relative './patient.rb'
require_relative './appointment.rb'

class Doctor

    attr_accessor :name
    @@all = []

    def initialize (name)

        @name = name 
        self.save

    end

    def save 

        Doctor.all << self

    end

    def self.all

        @@all

    end

    def appointments

        Appointment.all.select do |int_appt|

            int_appt.doctor == self
            self.save

        end

    end

    def new_appointment(patient, date)

        Appointment.new(date, patient, self)

    end

    def patients 

        self.appointments.map do |int_appt|

            int_appt.patient

        end

    end

end