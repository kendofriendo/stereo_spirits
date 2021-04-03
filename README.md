# README

Project 3 for Flatiron demonstrates a web application built with Ruby on Rails using Devise for user authentication and Omniauth for github session sign-in. 

* System dependencies
	Ruby, rails, and ability to access localhost connection.
	
* Configuration
	* `git clone https://github.com/kendofriendo/stereo_spirits`
	* `cd stereo_spirits`
	* `bundle install`
	* `rails server`

* To create the database, initialize, and seed it:
	* `rails db:drop`
	* `rails db:setup`

* Access the site via localhost:3000

App created with:

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

System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTgwMDg4MzI5NiwtNjk1NjQxNTY4LDc1NT
g1MDczLC02NTQ3Njg3ODVdfQ==
-->