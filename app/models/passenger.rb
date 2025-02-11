class Passenger < ApplicationRecord
  has_many :trips
  validates :name, presence: true
  validates :phone_num, presence: true
  
  def total_spent
    passenger_trips = self.trips 
    
    if passenger_trips.empty?
      return nil
    end
    
    amount_spent = 0
    
    passenger_trips.each do |trip|
      amount_spent += trip.cost
    end
    
    return amount_spent
  end
end
