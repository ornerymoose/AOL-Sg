task :mailsummit => :environment do
  summitEmail = CustomersController.new
  summitEmail.non_pb
end