class HomeController < ApplicationController
  def help

    
  end
  
  def home  
  end
  
  def patient
      @patient = Patient.all
      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patient  }
    end
  end
  
  def medicine
      @medicine = Medicine.all
      respond_to do |f|
        f.html
        f.json { render json: @medicine}
      end
  end
end
