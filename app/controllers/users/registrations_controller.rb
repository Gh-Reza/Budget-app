# app/controllers/users/registrations_controller.rb
class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      # Redirect to the categories page after registration
      sign_in(resource) if resource.persisted?
      redirect_to categories_path and return
    end
  end
end
