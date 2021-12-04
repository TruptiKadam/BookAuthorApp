class Book < ActiveRecord::Base

	has_and_belongs_to_many :authers, dependent: :destroy
	validates :book_title, presence: true
	validates :book_title, uniqueness: true
	accepts_nested_attributes_for :authers, allow_destroy: true, reject_if: :all_blank

end
