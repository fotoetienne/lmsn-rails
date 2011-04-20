class BetaTester < ActiveRecord::Base
	attr_accessor :code

	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	code_check = /letmedjnow/i
	
	validates :name,	:presence	=> true,
				:length		=> { :maximum => 50 }
	validates :email,	:presence	=> true,
				:format		=> { :with => email_regex },
				:uniqueness	=> { :case_sensitive => false }
#	validates :code,	:presence	=> true,
#				:format		=> { :with => code_check }


end
