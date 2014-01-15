class MedicinesController < ApplicationController

def create
  @patient = Patient.find(params[:patient_id])
  @medicine = @patient.medicines.create(params[:medicine])
  redirect_to patient_path(@patient)
end

def destroy
   @patient = Patient.find(params[:patient_id])
   @medicine = @patient.medicine.find(params[:id])
   @medicine.destroy
   redirect_to patient_path(@patient)
end

def index
  @medicines = Medicine.all
  
  respond_to do |format|
    format.html
    format.json {render json: @medicines }
  end
end

end
