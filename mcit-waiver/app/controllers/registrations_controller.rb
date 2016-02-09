class RegistrationsController < Devise::RegistrationsController

	def new
		super
	end

	def edit 
		super
	end

	def update
		super
	end

	def destroy
		super
	end

	def cancel
		super
	end

	def create
      build_resource(sign_up_params)

      resource.save
      yield resource if block_given?
      if resource.persisted?
        if resource.active_for_authentication?
          set_flash_message :notice, :signed_up if is_flashing_format?
          #sign_up(resource_name, resource) #this prevents the new users that are created from logging in 
          #respond_with resource, location: after_sign_up_path_for(resource)
          respond_with resource, location: users_path

        else
          set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
          expire_data_after_sign_in!
          respond_with resource, location: after_inactive_sign_up_path_for(resource)
        end
      else
        clean_up_passwords resource
        set_minimum_password_length
        respond_with resource
      end
    end

end
