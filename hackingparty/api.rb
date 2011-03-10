

require 'hackingparty/database'

require 'rubygems'
require 'sinatra/base'
require 'sass'


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
		set :public, File.expand_path( File.dirname(__FILE__) + '/../static' )
		set :views, File.expand_path( File.dirname(__FILE__) + '/../views' )

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
		# CSS
		#
		get '/style.css' do
			content_type 'text/css', :charset => 'utf-8'
			scss :style
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
			erb :"access/register"	
		end

		post '/access/register' do
			#
		end

		post '/access/register' do
			#
		end

	end
end

