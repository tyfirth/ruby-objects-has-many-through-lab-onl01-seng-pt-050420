class Patient
  
  attr_accessor :name 
  
  @@all = []
  
  def self.all 
    @@all
  end
  
  def new_appointment(date, doctor)
    Appointment.new
  end
  
  
  
end