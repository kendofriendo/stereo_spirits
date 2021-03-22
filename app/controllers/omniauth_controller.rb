class OmniauthController < Devise::OmniauthCallbacksController
   # See https://github.com/omniauth/omniauth/wiki/FAQ#rails-session-is-clobbered-after-callback-on-developer-strategy
   skip_before_action :verify_authenticity_token, only: :github

   def github
     # You need to implement the method below in your model (e.g. app/models/user.rb)
     @user = User.create_from_github_data(request.env['omniauth.auth'])
     if @user.persisted?
       sign_in_and_redirect @user, event: :authentication # this will throw if @user is not activated
       set_flash_message(:notice, :success, kind: "Github") if is_navigational_format?
     else
       session["devise.github"] = request.env["omniauth.auth"].except(:extra) # Removing extra as it can overflow some session stores
       set_flash_message(:notice, :failure, kind: "Github")
       redirect_to new_user_registration_url
     end
   end
 
   def failure
     redirect_to root_path
   end
 end