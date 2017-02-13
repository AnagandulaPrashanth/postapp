class Post < ActiveRecord::Base
	validates :first_name, :presence=>true
	validates :first_name, length: {maximum: 20}
	validates :first_name, uniqueness: {case_sensitive: false}
	
	validates :last_name, length: {minimum: 5}

	validates :salary, numericality: true
end
