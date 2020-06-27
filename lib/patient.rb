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

def artists
  appointments.collect {|appointment| appointment.artist }
end



def self.all
  return @@all
end


end