class Patient < ActiveRecord::Base
  attr_accessible :comment, :name, :pesel, :room, :surname
  
   validates :pesel, presence: true,
                     uniqueness: true,
                     length: { :is => 11}
                     

  validates :name, presence: true
                  
  
  validates :surname, presence: true
                      
  
  validates :room, presence: true, 
                   numericality: { :only_integer => true }
                  
  has_many :medicines, :dependent => :destroy                 

end
