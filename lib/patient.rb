require_relative './doctor.rb'
require_relative './appointment.rb'


class Patient

    attr_accessor :name
    @@all = []

    def initialize(name)
        
        @name = name
        self.save

    end

    def self.all

        @@all

    end
    
    def save 

        Patient.all << self

    end

    def new_appointment(doctor, date)

        Appointment.new(date, self, doctor)

    end

    def appointments

        Appointment.all.select do |int_appt|

            int_appt.patient == self

        end

    end

    def doctors


        self.appointments.map do |int_appt|

            int_appt.doctor

        end

    end

end