# README

## Project 3 for Flatiron demonstrates a web application built with Ruby on Rails using Devise for user authentication and Omniauth for github session sign-in. 

* System dependencies
	Ruby, rails, and ability to access localhost connection.
	
* Configuration
	* `git clone https://github.com/kendofriendo/stereo_spirits`
	* `cd stereo_spirits`
	* `bundle install`
	* `rails server`

* To create the database, initialize, and seed it:
	* `rails db:setup RAILS_ENV=development`

* Access the site via localhost:3000, sign up, and start clicking on things.

If you would like to use github to sign in, you'll need to first [create your own oauth application](https://github.com/settings/developers) .
Set the home page to http://127.0.0.1/users/auth/github
and set the authorization callback url to http://127.0.0.1:3000/users/auth/github/callback

Once created, back inside the project directory run `rails credentials:edit` and enter:
 

    github:
        github_client_id: (your client id)
        github_client_secret: (your client secret)
and save the file.

Next, in your config/initializers/devise.rb under ⇒ Omniauth, you'll want to put 

     config.omniauth :github,
     Rails.application.credentials.dig(:github, :github_client_id),
     Rails.application.credentials.dig(:github, 
    :github_client_secret), scope: 'user, public_repo'

Rails credentials works by using encryption on the config/credentials.yml.enc file paired with a master.key in the same directory. In a production environment this means you can safely put the credentials for your app inside of your rails app, since it can't be decrypted unles
## The [blog post](https://www.kendofriendo.com/project/3) goes into detail how I went about creating it.



### System configuration details via `rails about`:

    Rails version             6.1.3.1
    
    Ruby version              ruby 3.0.0p0 (2020-12-25 revision 95aff21468) 
    [x86_64-linux]
    
    RubyGems version          3.2.3
    
    Rack version              2.2.3
    
    JavaScript Runtime        Node.js (V8)

**Middleware** 

    Webpacker::DevServerProxy,
    Rack::MiniProfiler, 
    ActionDispatch::HostAuthorization,
    Rack::Sendfile, ActionDispatch::Static,
    ActionDispatch::Executor, Rack::LiveReload, ActiveSupport::Cache::Strategy::LocalCache::Middleware,
    Rack::Runtime, Rack::MethodOverride,
    ActionDispatch::RequestId,
    ActionDispatch::RemoteIp,
    Sprockets::Rails::QuietAssets,
    Rails::Rack::Logger,
    ActionDispatch::ShowExceptions,
    WebConsole::Middleware, 
    ActionDispatch::DebugExceptions,
    BetterErrors::Middleware,
    ActionDispatch::ActionableExceptions,
    ActionDispatch::Reloader,
    ActionDispatch::Callbacks,
    ActiveRecord::Migration::CheckPending,
    ActionDispatch::Cookies,
    ActionDispatch::Session::CookieStore,
    ActionDispatch::Flash,
    ActionDispatch::ContentSecurityPolicy::Middleware, ActionDispatch::PermissionsPolicy::Middleware,
    Rack::Head, Rack::ConditionalGet,
    Rack::ETag, Rack::TempfileReaper,
    Warden::Manager,
    OmniAuth::Strategies::GitHub

**Environment**
               `development`
**Database adapter**
          `sqlite3`
**Database schema version** 
  `20210330202156`

**Gemfile**
https://github.com/kendofriendo/stereo_spirits/blob/main/gem_info.md
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTUwODE1NzYwMSwyMDQ4ODUyOTcyLDIxMz
kzMTM5NTIsLTEwMTcyODg2MDcsLTY5NTY0MTU2OCw3NTU4NTA3
MywtNjU0NzY4Nzg1XX0=
-->