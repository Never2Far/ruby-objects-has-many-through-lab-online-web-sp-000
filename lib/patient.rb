class Patient

@@all = []

attr_accessor :name

def initialize(name)
@name = name
@@all << self
end

def appointments
  Appointment.all.select {|appointment| appointment.patient == self}
end

def doctors
  appointments.collect {|appointment| appointment.doctor }
end



def self.all
  return @@all
end


end
