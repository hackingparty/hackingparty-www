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
		property :name, String
		property :email, String
		property :password, String
	end

end

DataMapper.finalize
#DataMapper.auto_migrate! # auto-deletes & rebuild the database

=begin
usr = User.create
usr.name = "Glenn Y. Rolland"
usr.email = "glenn.rolland@gnuside.com"
usr.password = "**********"
usr.save
=end

