class CustomersController < ApplicationController
	def home
	end

	def pb
		@customer_name = ENV["pb_customers_name"].split(",")
		@cust_email = ENV["pb_customers_email"].split(",")

		@name = "CUSTOMER"
		combined = @cust_email.zip(@customer_name)
		combined.each do |group|
			email = group[0]
			@name = group[1]
			#UserNotifier.send_pb_email(email, @name).deliver_now
		end
	end

	def pb_send
	end

	def non_pb
		@customer_name = ENV["non_pb_customers_name"].split(",")
		@cust_email = ENV["non_pb_customers_email"].split(",")

		combined = @cust_email.zip(@customer_name)
		@name = "CUSTOMER"
		logger.debug "COMBINED"
		logger.debug combined.length
		combined.each do |group|
			email = group[0]
			UserNotifier.send_non_pb_email(email, @name).deliver_now
		end
	end

	def dais
		@customer_name = ENV["dais_customers_name"].split(",")
		@cust_email = ENV["dais_customers_email"].split(",")

		combined = @cust_email.zip(@customer_name)
		@name = "CUSTOMER"
		logger.debug "COMBINED"
		logger.debug combined.length
		combined.each do |group|
			email = group[0]
			#UserNotifier.send_dais_email(email, @name).deliver_now
		end
	end

	def dais_send
	end

end
