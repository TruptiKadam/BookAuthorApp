class AuthersBook < ActiveRecord::Base

	belongs_to :book
	belongs_to :auther

	validates_uniqueness_of :book_id, scope: :auther_id
end
