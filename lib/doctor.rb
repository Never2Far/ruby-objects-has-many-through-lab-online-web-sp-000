class Doctor

@@all = []

attr_accessor :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  return @@all
end

def new_appointment(date, patient)
  Appointment.new(date, self, patient)
end

def appointments
  Appointment.all.select {|appointment| appointment.doctor == self}
end

def patients
  appointments.collect {|appointment| appointment.patient}
end

end
