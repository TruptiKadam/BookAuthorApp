class Auther < ActiveRecord::Base

	has_and_belongs_to_many :books
	
	validates :first_name, :last_name, :date_of_birth, presence: true
end
