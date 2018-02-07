class Customer < ApplicationRecord

	validates :name, presence: true
	validates :cnic, presence: true
	validates :number, presence: true

	validates :cnic, length: { is: 15 }
	validates :number, length: { is: 11 }
	
	belongs_to :user
end
