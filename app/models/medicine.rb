class Medicine < ActiveRecord::Base
  attr_accessible :dose, :endDate, :hour, :name, :startDate, :category
  
  belongs_to :patient
  
  validates :dose, presence: true,
                   numericality: { :only_integer => true }
  
  validates :name, presence: true
  
  validates :hour, presence: true 
                   
  validates :category, presence: true 
end
