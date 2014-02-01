class Api::RegistrationsController < Api::BaseController
  
  respond_to :json
  def create
 
    admin = Admin.new(params[:admin])
    if admin.save
      render :json=> admin.as_json(:auth_token=>admin.authentication_token, :email=>admin.email), :status=>201
      return
    else
      warden.custom_failure!
      render :json=> admin.errors, :status=>422
    end
  end
end