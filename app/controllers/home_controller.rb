class HomeController < Api::BaseApiController
  def help
    @patients = Patient.all
    @medicines = Medicine.all
    
    respond_to do |format|
    format.html 
    format.json { render json: @medicines }
    
  end
end
  
  def home 
  end 

end