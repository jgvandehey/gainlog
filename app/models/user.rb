class User < ActiveRecord::Base
	attr_accessible :bio, :email, :name, :nickname, :provider, :uid
	has_many :goals, :dependent => :destroy
	

	def self.create_with_omniauth(auth)
		create! do |user|
			user.provider = auth["provider"]
			user.uid = auth["uid"]
			user.name = auth["info"]["name"]
			user.bio = auth["info"]["description"]
			user.nickname = auth['info']['nickname']
		end
	end
end
