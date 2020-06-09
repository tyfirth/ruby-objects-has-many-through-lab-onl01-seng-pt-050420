class Doctor
  
  attr_accessor :name, :date, :patient
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.map {|appointment| appointment.doctor == self}
  end
  
  def patients
    Patient.all.map {|patient| patient.doctor == self}
  end
  
end