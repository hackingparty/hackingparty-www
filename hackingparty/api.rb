

require 'hackingparty/database'

require 'rubygems'
require 'sinatra/base'
require 'sass'
require 'pony'


#
#
#
module HackingParty

	#
	#
	#
	class Api < Sinatra::Base

		enable :sessions

		# basic configuration
		set :default_layout, :layout
		set :static, true
		set :public, File.expand_path( File.join [ File.dirname(__FILE__), '..', 'static' ] )
		set :views, File.expand_path( File.join [ File.dirname(__FILE__) , '..', 'views' ] )

		# for web fonts
		mime_type :ttf, "application/octet-stream"
		mime_type :eot, "application/octet-stream"
		mime_type :otf, "application/octet-stream"

		#
		# at first time
		#
		configure do
			#DataMapper::Logger.new($stdout, :debug)
			#DataMapper.setup(:default, 'sqlite:project2.db')
			#DataMapper.auto_upgrade!
		end

		#
		# Index URL
		#
		get '/' do
			@body = "Hello world"
			erb :index
		end


		#
		# User access  
		#
		get '/access/signin' do
			erb :"access/signin"	
		end

		get '/access/register' do
			# Create a user !!!

			erb :"access/register"	
		end

		post '/access/register' do
			user = User.create
			user.name = params[:name],
			user.email = params[:email]
			user.password = params[:password]
			user.save
		end

	end
end

