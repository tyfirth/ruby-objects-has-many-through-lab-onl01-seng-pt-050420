class Patient
  
  attr_accessor :name, :appointment
  
  @@all = []
  
  def self.all 
    @@all
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.map {|appointment| appointment.patient == self}
  end
  
  def doctors
    Appointment.all.map {|appointment| appointment.doctor}
  end
  
end