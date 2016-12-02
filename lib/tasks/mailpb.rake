task :mailpb => :environment do
  pbEmail = CustomersController.new
  pbEmail.pb
end