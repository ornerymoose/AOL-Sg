class CustomersController < ApplicationController
	def home
	end

	def pb
		ENV["pb_customers_email"].split(",").each do |email|
			#UserNotifier.send_pb_email(email).deliver_now
		end
	end

	def non_pb
		ENV["non_pb_customers_email"].split(",").each do |email|
			UserNotifier.send_non_pb_email(email).deliver_now
		end
	end

	def dais
		ENV["dais_customers_email"].split(",").each do |email|		
			#UserNotifier.send_dais_email(email).deliver_now
		end
	end

end
