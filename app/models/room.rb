class Room < ApplicationRecord
	belongs_to :building
	has_and_belongs_to_many :accessories
	has_many :reservations
	has_many :users, through: :reservations
	validates :name, presence: true
	validates :code, uniqueness: true
	paginates_per 15

	def is_active?
		self.active
	end

	def status
		response = Faraday.get "https://ca-3-api.mybluemix.net/api/v1/rooms/#{self.code}"
		#response.body
		output = case
			when response.status == 200 then JSON.parse(response.body)
			when response.status == 404 then nil
		end
	end	

	def self.without_active_reservation
		Room.all - Room.joins(:reservations).merge(Reservation.active)
	end

	def drop_down
		"#{self.name} - Floor: #{self.floor} - Max. capacity: #{self.max_capacity} - Equipment: #{self.accessories.map{|a| a.name}}"
	end

end
