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


* Github
Rails credentials works by using encryption on the config/credentials.yml.enc file paired with a master.key in the same directory. This allows us to safely store credentials (like the oauth app) in our version control, and even have separate sets for each environment. If you have a large team working on an app together this allows everyone to use the same version without worrying about re-generating new credentials for every member or trying to securely pass around a keyfile. It's pretty neat.

Github sign-in/sign-up will only work on localhost:3000, since that's where the callback is directed to.

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
eyJoaXN0b3J5IjpbMTA3MTU3MDYwNywxMDc3MzkwODA3LDIwND
g4NTI5NzIsMjEzOTMxMzk1MiwtMTAxNzI4ODYwNywtNjk1NjQx
NTY4LDc1NTg1MDczLC02NTQ3Njg3ODVdfQ==
-->
