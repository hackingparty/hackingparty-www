#!/usr/bin/ruby

require 'rubygems'
require 'dm-core'
require 'dm-migrations'


module HackingParty

	URL_MAX_LENGTH = 2047
	USERNAME_MAX_LENGTH = 250
	PASSWORD_MAX_LENGTH = 250
	TITLE_MAX_LENGTH = 250

	class User
		include DataMapper::Resource

		property :id, Serial
		property :name, String, :required => true, :unique => true
		property :username, String, :required => true, :unique => true
		property :email, String, :required => true, :unique => true
		property :password, String, :required => true, :unique => true

		belongs_to :event
	end

	class Event
		include DataMapper::Resource

		property :id, Serial
		property :name, String, :required => true, :unique => true
		property :created_at, DateTime, :required => true, :unique => true
		property :planned_at, DateTime, :required => true, :unique => true
		property :location, String, :required => true, :unique => true
		property :description, String, :required => true, :unique => true

		# FIXME: rename to host ?
		#has 1, :user, :through => :author

		belongs_to :user

		has 1, :author, User
	#	has n, :registrants, User
	end

end

DataMapper.finalize
#DataMapper.auto_migrate! # auto-deletes & rebuild the database

